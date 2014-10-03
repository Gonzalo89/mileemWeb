class AddRefEstadoToPropiedad < ActiveRecord::Migration
  def change
    add_reference :propiedads, :estado, index: true
  end
end
