require 'carrierwave/orm/activerecord'

class Propiedad < ActiveRecord::Base
  validates :direccion, presence: true
  validates :descripcion, length: { minimum: 10 }
  validates :precio, numericality: { only_integer: true, greater_than: 1 }
  validates :numero, numericality: { only_integer: true}
  has_many :fotos, dependent: :destroy
  belongs_to :barrio
  belongs_to :tipo_propiedad
  belongs_to :moneda
  belongs_to :operacion
end
