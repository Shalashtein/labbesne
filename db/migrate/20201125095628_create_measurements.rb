class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.references :spree_users, null: false, foreign_key: true
      t.integer :height
      t.integer :weight
      t.string :shirt
      t.string :pants
      t.integer :shoes
      t.references :bodies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
