class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_user!
    unless session[:instagram_id] && current_user
      flash[:error] = "Access Denied, Please sign in"
      redirect_to root_url
    end
  end

  def current_user
    User.find_by_instagram_id(session[:instagram_id])
  end

  helper_method :current_user
end
