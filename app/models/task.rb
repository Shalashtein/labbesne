class Task < ApplicationRecord
  belongs_to :spree_products, class_name: 'Spree::Product'
  has_one :merchant
end
