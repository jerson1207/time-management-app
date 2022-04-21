class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!
  before_action :beginning_of_week, if: :user_signed_in?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to( root_path)
  end

  def beginning_of_week
    Date.beginning_of_week = :sunday
  end

end
