class AddTarjetaToPropiedads < ActiveRecord::Migration
  def change
    add_column :propiedads, :nombre_titular, :string
    add_column :propiedads, :apellido_titular, :string
    add_column :propiedads, :numero_tarjeta, :string
    add_column :propiedads, :codigo_seguridad, :int
    add_column :propiedads, :vencimiento_tarjeta, :datetime
  end
end
