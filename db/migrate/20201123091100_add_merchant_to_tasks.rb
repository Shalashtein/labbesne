class AddMerchantToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :merchant, null: false, foreign_key: true
  end
end
