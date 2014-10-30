class CreateVecinos < ActiveRecord::Migration
  def change
    create_table :vecinos do |t|
      t.integer "vecino_id" 
      t.references :barrio, index: true

      t.timestamps
    end
  end
end
