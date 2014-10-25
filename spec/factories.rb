
FactoryGirl.define do

  factory :comment do
    body "here is my body"
  end

  factory :story0, class: Story do
    url "http://www.microsoft.com"
    headline "here is story #0"
    publish_date Date.today
  end

  factory :story1, class: Story do
    url "http://www.google.com"
    headline "here is story #1"
    publish_date Date.today
  end

  factory :story2, class: Story do
    url "http://www.microsoft.com"
    headline "here is story #2"
    publish_date Date.today
  end

  factory :story3, class: Story do
    url "http://www.microsoft.com"
    headline "here is story #3"
    publish_date Date.today
  end

  factory :story4, class: Story do
    url "http://www.google.com"
    headline "here is story #4"
    publish_date Date.today-1
  end

  factory :story5, class: Story do
    url "http://www.microsoft.com"
    headline "here is story #1"
    publish_date Date.today-2
  end

  factory :uma, class: User do
    instagram_id 79
    user_name "uma"
    factory :uma_with_stories do |uma|
      after(:create) {|uma| create(:story1, user: uma) }
      after(:create) {|uma| create(:story3, user: uma) }
      after(:create) {|uma| create(:story5, user: uma) }
    end
  end

  factory :jon, class: User do
    instagram_id 1267
    user_name "jacko"
    factory :jon_with_stories do |jon|
      after(:create) {|jon| create(:story0, user: jon) }
      after(:create) {|jon| create(:story2, user: jon) }
      after(:create) {|jon| create(:story4, user: jon) }
    end

=begin
    factory :jon_with_comments do |jon|
      after(:create) {|jon| create(:story0, user: jon) }
      after(:create) {|jon| create(:story2, user: jon) }
      after(:create) {|jon| create(:story4, user: jon) }

      #if(Story.count>0)
      #story=Story.first
      #after(:create) {|jon| create(:comment, body: "all things are like this", commentable: story)}
      #end
    end
=end
  end


  end

