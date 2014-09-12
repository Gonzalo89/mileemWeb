require 'carrierwave/orm/activerecord'

class Foto < ActiveRecord::Base
  belongs_to :propiedad
  mount_uploader :nombre, FotoUploader
end
