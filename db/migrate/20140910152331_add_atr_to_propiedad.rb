class AddAtrToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :antiguedad, :integer
    add_column :propiedads, :dormitorios, :integer
    add_column :propiedads, :expensas, :integer
  end
end
