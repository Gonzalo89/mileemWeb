class CreatePropiedads < ActiveRecord::Migration
  def change
    create_table :propiedads do |t|
      t.string :direccion
      t.references :barrio, index: true

      t.timestamps
    end
  end
end
