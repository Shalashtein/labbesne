class Task < ApplicationRecord
  belongs_to :spree_products, class_name: 'Spree::Product'
end
