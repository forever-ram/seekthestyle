class ApiStoriesController < ApplicationController
  before_filter :authenticate_user!, only: [:logout]

  def index
    date0=Date.today-0
    @stories0=Story.by_date(date0)
    d={}
    d[:date]=date0
    d[:stories]=ActiveModel::ArraySerializer.new(@stories0, each_serializer: StorySerializer)

    date1=Date.today-1
    @stories1=Story.by_date(date1)
    e={}
    e[:date]=date1
    e[:stories]=ActiveModel::ArraySerializer.new(@stories1, each_serializer: StorySerializer)

    date2=Date.today-2
    @stories2=Story.by_date(date2)
    f={}
    f[:date]=date2
    f[:stories]=ActiveModel::ArraySerializer.new(@stories2, each_serializer: StorySerializer)

    #r[date2]=ActiveModel::ArraySerializer.new(@stories2, each_serializer: StorySerializer)
    r=[d,e,f]

    date3=Date.today-3
    date4=Date.today-4
    date5=Date.today-5
    date6=Date.today-6

    #@stories=Story.all
    #render json: @stories, each_serializer: StorySerializer, root: false
    render json: r.to_json
  end

end