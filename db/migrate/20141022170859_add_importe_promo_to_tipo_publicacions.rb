class AddImportePromoToTipoPublicacions < ActiveRecord::Migration
  def change
    add_column :tipo_publicacions, :importePromo, :integer
  end
end
