require 'carrierwave/orm/activerecord'

class Propiedad < ActiveRecord::Base
  geocoded_by :direccion_completa
  after_validation :geocode, :if => :direccion_completa_changed?
  
  validates :direccion, presence: true, length: {maximum: 50}
  validates :numero, numericality: { only_integer: true, less_than_or_equal_to: 999999999 }
  validates :piso, length: { maximum: 10 }
  validates :departamento, length: { maximum: 10 }
  validates :descripcion, length: { minimum: 10, maximum: 500 }
  validates :precio, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 999999999 }
  validates :antiguedad, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :dormitorios, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :expensas, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :superficie, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :ambientes, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :superficie_nc, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :fecha_publicacion, presence: true
  validates :nombre_titular, presence: true, :if => :no_gratuita;
  validates :apellido_titular, presence: true, :if => :no_gratuita;
  validates :numero_tarjeta, presence: true, length: { minimum: 16, maximum: 16 }, numericality: {only_integer: true} , :if => :no_gratuita;
  validates :codigo_seguridad, presence: true, length: { minimum: 3, maximum: 3 }, numericality: {only_integer: true}, :if => :no_gratuita;
  validates :vencimiento_tarjeta, presence: true, :if => :no_gratuita;
   
  has_many :fotos, dependent: :destroy
  has_many :tieneamenities, dependent: :destroy
  has_many :amenities, :through => :tieneamenities
  has_many :videos, dependent: :destroy

  belongs_to :barrio
  belongs_to :tipo_propiedad
  belongs_to :moneda
  belongs_to :operacion
  belongs_to :user
  belongs_to :tipo_publicacion
  belongs_to :estado
  
  def direccion_completa
    [direccion, numero, ',CABA', ',ARGENTINA'].compact.join(' ')
  end
  
  def direccion_completa_changed?
    :direccion_changed? || :numero_changed?        
  end
  
  def precio_pesos
    if self.moneda_id == 1 
      self.precio
    else
      self.precio * 15
    end
  end
  
  def no_gratuita
    tipo_publicacion_id != 1
  end
   
end
