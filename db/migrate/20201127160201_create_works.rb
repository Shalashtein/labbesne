class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :type
      t.string :code
      t.string :location
      t.string :days, array: true, default: []

      t.timestamps
    end
  end
end
