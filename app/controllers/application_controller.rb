class ApplicationController < ActionController::Base
  # Custom authentication methods or before_actions (if needed)

  private

  def authenticate_user!
    redirect_to new_session_path, alert: "Please log in." unless user_signed_in?
  end

  def user_signed_in?
    session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def not_found
  end
end
