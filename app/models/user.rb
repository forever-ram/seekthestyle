class User < ActiveRecord::Base
  attr_accessible :auth_token, :full_name, :instagram_id, :user_name
end
