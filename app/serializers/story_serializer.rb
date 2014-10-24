class StorySerializer < ActiveModel::Serializer
  attributes :id, :url, :headline, :publish_date
end
