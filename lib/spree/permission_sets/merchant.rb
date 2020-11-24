module Spree
  module PermissionSets
    class Merchant < PermissionSets::Base
      def activate!
        #can [:show, :update], Order, Order.where(user: user) do |order, token|
        #  order.user == user || (order.guest_token.present? && token == order.guest_token)
        #end
        #can :read, Product
        #can :read, ProductProperty
        #can :read, Property
        cannot :manage, :all
      end
    end
  end
end
