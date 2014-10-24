class Story < ActiveRecord::Base
  attr_accessible :headline, :status, :url, :user_id, :publish_date
  has_many :comments, :as => :commentable
  belongs_to :user

  def self.by_date date_val
    Story.where('publish_date=?', date_val)
  end
end
