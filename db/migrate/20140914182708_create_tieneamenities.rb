class CreateTieneamenities < ActiveRecord::Migration
  def change
    create_table :tieneamenities do |t|
      t.references :propiedad, index: true
      t.references :amenity, index: true

      t.timestamps
    end
  end
end
