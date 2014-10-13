class AddFechaPublicacionToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :fecha_publicacion, :datetime
  end
end
