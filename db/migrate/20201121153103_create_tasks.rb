class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :spree_products, null: false, foreign_key: true
      t.boolean :notified
      t.boolean :sent
      t.boolean :recieved

      t.timestamps
    end
  end
end
