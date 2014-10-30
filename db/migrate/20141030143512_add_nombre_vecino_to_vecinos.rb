class AddNombreVecinoToVecinos < ActiveRecord::Migration
  def change
    add_column :vecinos, :vecino_nombre, :string
  end
end
