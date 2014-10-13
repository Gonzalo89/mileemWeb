class AddRefUserToPropiedads < ActiveRecord::Migration
  def change
    add_reference :propiedads, :user, index: true
  end
end
