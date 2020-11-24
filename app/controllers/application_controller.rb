class ApplicationController < ActionController::Base
  before_action :authenticate_spree_user!
end
