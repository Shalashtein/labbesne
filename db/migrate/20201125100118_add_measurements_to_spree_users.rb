class AddMeasurementsToSpreeUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :spree_users, :measurements, null: true, foreign_key: true
  end
end
