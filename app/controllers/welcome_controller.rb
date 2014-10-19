class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: [:logout]

  def index
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => callback_url)
    #binding.pry
    if response
      user = User.find_by_instagram_id(response.user.id)
      if user
        user.update_attributes(auth_token: response.access_token, user_name: response.user.username, full_name: response.user.full_name, instagram_id: response.user.id)
      else
        User.create(auth_token: response.access_token, user_name: response.user.username, full_name: response.user.full_name, instagram_id: response.user.id)
      end
    end
    session[:instagram_id] = response.user.id
    session[:user_image] =response.user.profile_picture
    redirect_to root_url
  end

  def authenticate
    redirect_to Instagram.authorize_url(:redirect_uri => callback_url)
  end

  def logout
    session[:instagram_id] = nil
    redirect_to root_url
  end
end
