class CreateTipoPublicacions < ActiveRecord::Migration
  def change
    create_table :tipo_publicacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
