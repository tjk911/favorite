namespace :twitter_accounts do
  task :favorite_tweets => :environment do
    TwitterAccount.all.each { |twitter_account| twitter_account.favorite_tweets! }
  end
end
