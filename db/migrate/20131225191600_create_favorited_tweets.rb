class CreateFavoritedTweets < ActiveRecord::Migration
  def change
    create_table :favorited_tweets do |t|
      t.integer :twitter_account_id
      t.string :status_id
      t.string :name
      t.string :username
      t.string :image_url
      t.string :text
      t.datetime :posted_at

      t.timestamps
    end
  end
end
