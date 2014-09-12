require 'carrierwave/orm/activerecord'
require 'file_size_validator'

class Foto < ActiveRecord::Base
  belongs_to :propiedad
  mount_uploader :nombre, FotoUploader
  validates :nombre, :file_size => {
      :maximum => 5.megabytes.to_i
    }
end
