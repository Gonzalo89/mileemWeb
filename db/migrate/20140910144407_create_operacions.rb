class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
