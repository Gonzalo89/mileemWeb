class AddM2ToVecinos < ActiveRecord::Migration
  def change
    add_column :vecinos, :promedioM2, :integer
    add_column :vecinos, :promedioM2Dolares, :integer
  end
end
