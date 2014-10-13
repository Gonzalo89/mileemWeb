class AddPrecioToPropiedads < ActiveRecord::Migration
  def change
    add_column :propiedads, :precio, :integer
  end
end
