class AddDescripcionToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :descripcion, :text
  end
end
