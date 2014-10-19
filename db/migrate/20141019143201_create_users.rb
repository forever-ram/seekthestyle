class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :auth_token
      t.string :user_name
      t.string :full_name
      t.string :instagram_id

      t.timestamps
    end
  end
end
