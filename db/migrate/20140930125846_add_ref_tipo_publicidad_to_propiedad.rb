class AddRefTipoPublicidadToPropiedad < ActiveRecord::Migration
  def change
    add_reference :propiedads, :tipo_publicacion, index: true
  end
end
