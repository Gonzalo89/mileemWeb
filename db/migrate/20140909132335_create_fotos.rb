class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :nombre
      t.references :propiedad, index: true

      t.timestamps
    end
  end
end
