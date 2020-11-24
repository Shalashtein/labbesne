# frozen_string_literal: true

module Spree
  module StoreControllerDecorator
    def self.prepended(base)
      base.before_action :authenticate_spree_user!
      base.before_action :checker
    end
    #If merchant tried to access Spree Store Controller he's redirected to Tasks
    def checker
      role = spree_current_user.spree_roles.all.first
      if !role.nil? && role.name == 'merchant'
        redirect_to('/tasks')
      end
    end
    Spree::StoreController.prepend self
  end
end
