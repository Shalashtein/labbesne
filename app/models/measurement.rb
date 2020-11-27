class Measurement < ApplicationRecord
  belongs_to :spree_users, class_name: 'Spree::User'
  belongs_to :bodies, class_name: 'Body'
end
