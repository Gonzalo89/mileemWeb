class AddTipoPropRefToPropiedads < ActiveRecord::Migration
  def change
    add_reference :propiedads, :tipo_propiedad_id, index: true
  end
end
