class AddDatosToTipoPublicacion < ActiveRecord::Migration
  def change
    add_column :tipo_publicacions, :maxFotos, :integer
    add_column :tipo_publicacions, :maxVideos, :integer
    add_column :tipo_publicacions, :mesesDuracion, :integer
  end
end
