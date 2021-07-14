class ApplicationController < ActionController::Base
  def user_for_paper_trail
    logged_in? ? current_member.id : 'Public user'  # or whatever
  end

  include CanCan::ControllerAdditions
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
end
