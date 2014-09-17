require 'carrierwave/orm/activerecord'

class Propiedad < ActiveRecord::Base
  validates :direccion, presence: true, length: {maximum: 50}
  validates :numero, numericality: { only_integer: true, less_than_or_equal_to: 999999999 }
  validates :piso, length: { maximum: 10 }
  validates :departamento, length: { maximum: 10 }
  validates :descripcion, length: { minimum: 10, maximum: 500 }
  validates :precio, numericality: { only_integer: true, greater_than: 1, less_than_or_equal_to: 999999999 }
  validates :antiguedad, numericality: {only_integer: true, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :dormitorios, numericality: {only_integer: true, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :expensas, numericality: {only_integer: true, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :superficie, numericality: {only_integer: true, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :ambientes, numericality: {only_integer: true, less_than_or_equal_to: 999999999 }, allow_blank: true
  validates :superficie_nc, numericality: {only_integer: true, less_than_or_equal_to: 999999999 }, allow_blank: true
   
  has_many :fotos, dependent: :destroy
  has_many :tieneamenities, dependent: :destroy  
  has_many :amenities, :through => :tieneamenities  
  
  belongs_to :barrio
  belongs_to :tipo_propiedad
  belongs_to :moneda
  belongs_to :operacion  
end
