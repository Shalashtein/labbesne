class ChangeBodyTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :bodies, :type, :name
  end
end
