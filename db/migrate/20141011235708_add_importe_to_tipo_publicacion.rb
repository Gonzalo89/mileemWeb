class AddImporteToTipoPublicacion < ActiveRecord::Migration
  def change
    add_column :tipo_publicacions, :importe, :integer
  end
end
