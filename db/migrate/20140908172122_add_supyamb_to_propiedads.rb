class AddSupyambToPropiedads < ActiveRecord::Migration
  def change
    add_column :propiedads, :superficie, :integer
    add_column :propiedads, :ambientes, :integer
  end
end
