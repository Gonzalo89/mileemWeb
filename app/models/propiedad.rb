require 'carrierwave/orm/activerecord'

class Propiedad < ActiveRecord::Base
  validates :direccion, presence: true
  belongs_to :barrio
  belongs_to :tipo_propiedad
  mount_uploader :foto, FotoUploader  
end
