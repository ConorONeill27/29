class ApplicationController < ActionController::Base
  include Authentication

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_authenticated

  def set_authenticated
    @authenticated = authenticated?

    return unless @authenticated

    id = Current.session.user_id
    @current_user = User.find(id)
  end
end
