class KeywordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_twitter_account

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = @twitter_account.keywords.new keyword_params
    if @keyword.save
      redirect_to @twitter_account
    else
      render action: :new
    end
  end

  def destroy
    @keyword = @twitter_account.keywords.find(params[:id])
    @keyword.destroy
    redirect_to @twitter_account
  end
private

  def set_twitter_account
    @twitter_account = current_user.twitter_accounts.find(params[:twitter_account_id])
  end

  def keyword_params
    params.require(:keyword).permit(:text)
  end
end
