class AddRefMonedaToPropiedad < ActiveRecord::Migration
  def change
    add_reference :propiedads, :moneda, index: true
  end
end
