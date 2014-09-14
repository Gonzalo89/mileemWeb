class AddSupNoCubToPropiedad < ActiveRecord::Migration
  def change
    add_column :propiedads, :superficie_nc, :integer
  end
end
