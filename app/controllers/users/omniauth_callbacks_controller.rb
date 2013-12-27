class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    auth = request.env["omniauth.auth"]

    twitter_account = current_user.twitter_accounts.find_or_create_by_username(
      username: auth.info.nickname,
      token: auth.credentials.token,
      secret: auth.credentials.secret,
      image_url: auth.info.image
    )

    redirect_to twitter_account
  end
end
