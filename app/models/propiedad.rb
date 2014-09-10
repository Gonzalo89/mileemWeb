require 'carrierwave/orm/activerecord'

class Propiedad < ActiveRecord::Base
  validates :direccion, presence: true
  validates :precio, numericality: { only_integer: true, greater_than: 1 }
  has_many :fotos, dependent: :destroy
  belongs_to :barrio
  belongs_to :tipo_propiedad
  belongs_to :moneda
  mount_uploader :foto, FotoUploader  
end
