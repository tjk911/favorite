class TwitterAccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_twitter_account, except: [:index]

  def index
    @twitter_accounts = current_user.twitter_accounts
  end

  def show
  end

private

  def set_twitter_account
    @twitter_account = current_user.twitter_accounts.find(params[:id])
  end
end
