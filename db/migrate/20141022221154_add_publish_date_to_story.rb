class AddPublishDateToStory < ActiveRecord::Migration
  def change
    add_column :stories, :publish_date, :date
  end
end
