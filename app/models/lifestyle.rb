class Lifestyle < ApplicationRecord
  belongs_to :spree_user, class_name: 'Spree::User'
  belongs_to :work, class_name: 'Work'
  belongs_to :physical, class_name: 'Physical'
end
