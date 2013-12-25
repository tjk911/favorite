module TwitterAccountsHelper
  def twitter_account_url(username)
    "https://twitter.com/#{username}"
  end

  def tweet_url(tweet)
    "https://twitter.com/#{tweet.username}/status/#{tweet.status_id}"
  end
end
