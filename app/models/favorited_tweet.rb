class FavoritedTweet < ActiveRecord::Base
  belongs_to :twitter_account
  scope :sorted, ->{ order("posted_at DESC") }
  scope :recent, ->{ limit(30) }
end
