class AddQuantityToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :quantity, :integer
  end
end
