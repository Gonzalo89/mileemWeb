class AddFotoToPropiedads < ActiveRecord::Migration
  def change
    add_column :propiedads, :foto, :string
  end
end
