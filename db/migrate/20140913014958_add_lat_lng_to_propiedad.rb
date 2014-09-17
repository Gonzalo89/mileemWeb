class AddLatLngToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :latitude, :float
    add_column :propiedads, :longitude, :float
  end
end
