class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :url
      t.string :headline
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
