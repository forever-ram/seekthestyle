class Comment < ActiveRecord::Base
  attr_accessible :body, :commentable_id, :commentable_type, :liked_count, :user_id
  belongs_to :commentable, :polymorphic => true
  has_ancestry
end
