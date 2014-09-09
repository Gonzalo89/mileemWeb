class RenameColumnTipoPropId < ActiveRecord::Migration
  def change
    rename_column :propiedads, :tipo_propiedad_id_id, :tipo_propiedad_id
  end
end
