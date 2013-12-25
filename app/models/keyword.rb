class Keyword < ActiveRecord::Base
  belongs_to :twitter_account
  validates :text, presence: true
end
