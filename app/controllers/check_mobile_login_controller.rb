class CheckMobileLoginController < ApplicationController
  def check_mobile_login
    token = params[:token]
    format.json { render :json => token }

    user = FbGraph::User.me(token)
    user = user.fetch

    logged = User.find_by_uid(user.identifier)
    sign_in(:user, user)
    respond_to do |format|
        format.json { render :json => logged.authentication_token }
    end
  end
end
