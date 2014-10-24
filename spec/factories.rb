
FactoryGirl.define do
  factory :jon, class: User do
    instagram_id 1267
    user_name "jacko"
    #factory :jon_story do
      #after(:create) do |jon|

      #end
    #end
  end


  factory :story2, class: Story do
    url "http://www.google.com"
    headline "here is story #2"
    publish_date Date.today
  end


  factory :story4, class: Story do
    url "http://www.google.com"
    headline "here is story #2"
    publish_date Date.today-1
  end

  factory :story5, class: Story do
    url "http://www.microsoft.com"
    headline "here is story #1"
    publish_date Date.today-2
  end

  factory :story6, class: Story do
    url "http://www.google.com"
    headline "here is story #2"
    publish_date Date.today-2
  end

  factory :uma, class: User do
    instagram_id 79
    user_name "uma"
    factory :uma_with_story do |uma|
      #story.after_create {|st| FactoryGirl.create(:uma, :story => st) }
      after(:create) {|uma| create(:story1, user: uma) }

      #url "http://www.microsoft.com"
      #headline "here is story #1"
      #publish_date Date.today-1
      #user_id uma
    end

  end


  factory :story1, class: Story do
    url "http://www.microsoft.com"
    headline "here is story #1"
    publish_date Date.today
  end

end

