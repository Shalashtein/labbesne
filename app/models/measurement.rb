class Measurement < ApplicationRecord
  belongs_to :spree_users, class_name: 'Spree::User'
  belongs_to :bodies, class_name: 'Body'
  validates :height, numericality: { only_integer: true, greater_than: 50, less_than: 250 }
  validates :weight, numericality: { only_integer: true, greater_than: 0, less_than: 250 }
end
