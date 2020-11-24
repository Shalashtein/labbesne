# frozen_string_literal: true

module Spree
  module UserSessionsControllerDecorator

    def create
      authenticate_spree_user!

      if spree_user_signed_in? && spree_current_user.spree_roles.first.name == 'merchant'
        respond_to do |format|
          format.html do
            flash[:success] = I18n.t('spree.logged_in_succesfully')
            redirect_to('/tasks')
          end
          format.js { render success_json }
        end
      elsif spree_user_signed_in?
        respond_to do |format|
          format.html do
            flash[:success] = I18n.t('spree.logged_in_succesfully')
            redirect_back_or_default(after_sign_in_path_for(spree_current_user))
          end
          format.js { render success_json }
        end
      else
        respond_to do |format|
          format.html do
            flash.now[:error] = t('devise.failure.invalid')
            render :new
          end
          format.js do
            render json: { error: t('devise.failure.invalid') },
              status: :unprocessable_entity
          end
        end
      end
    end

    Spree::UserSessionsController.prepend self
  end
end
