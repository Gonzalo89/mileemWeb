class AddRefOperacionToPropiedad < ActiveRecord::Migration
  def change
    add_reference :propiedads, :operacion, index: true
  end
end
