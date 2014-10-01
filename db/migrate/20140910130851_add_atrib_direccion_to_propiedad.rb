class AddAtribDireccionToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :piso, :string
    add_column :propiedads, :numero, :integer
    add_column :propiedads, :departamento, :string
  end
end
