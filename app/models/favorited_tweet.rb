class FavoritedTweet < ActiveRecord::Base
  belongs_to :twitter_account
  scope :sorted, ->{ order("posted_at DESC") }
end
