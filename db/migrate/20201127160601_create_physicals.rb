class CreatePhysicals < ActiveRecord::Migration[6.0]
  def change
    create_table :physicals do |t|
      t.string :activity

      t.timestamps
    end
  end
end
