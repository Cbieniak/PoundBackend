class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def check_mobile_login
    token = params[:token]
    format.json { render :json => token }

    user = FbGraph::User.me(token)
    user = user.fetch

    logged = User.find_by_uid(user.identifier)

    respond_to do |format|
        format.html # index.html.erb
        format.json { render :json => logged.authentication_token }
    end
end
end
