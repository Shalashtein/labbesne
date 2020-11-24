class AddMerchantToSpreeUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :spree_users, :merchant, null: true, foreign_key: true
  end
end
