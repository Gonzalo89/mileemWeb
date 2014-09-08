class Barrio < ActiveRecord::Base
  validates :nombre, presence: true
end
