class Propiedad < ActiveRecord::Base
  validates :direccion, presence: true
  belongs_to :barrio
end
