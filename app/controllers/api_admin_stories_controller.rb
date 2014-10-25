class ApiAdminStoriesController < ApplicationController
  before_filter :authenticate_user!, only: [:logout]

  def index
     @stories=Story.all
     render json: @stories.to_json
  end
end
