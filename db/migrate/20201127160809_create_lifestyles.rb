class CreateLifestyles < ActiveRecord::Migration[6.0]
  def change
    create_table :lifestyles do |t|
      t.references :spree_user, null: false, foreign_key: true
      t.references :work, null: false, foreign_key: true
      t.references :physical, null: false, foreign_key: true
      t.string :phsyical_days, array: true, default: []
      t.boolean :student
      t.string :student_days, array: true, default: []
      t.boolean :social
      t.string :social_days, array: true, default: []

      t.timestamps
    end
  end
end
