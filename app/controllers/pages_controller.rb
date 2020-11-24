class PagesController < ApplicationController
  before_action :authenticate_spree_user!
  def home
  end
end
