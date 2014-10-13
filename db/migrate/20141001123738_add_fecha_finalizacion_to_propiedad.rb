class AddFechaFinalizacionToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :fecha_finalizacion, :datetime
  end
end
