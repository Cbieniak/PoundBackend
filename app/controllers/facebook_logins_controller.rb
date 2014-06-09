class FacebookLoginsController < ApplicationController
  def check_mobile_login
    token = params[:token]
    user = FbGraph::User.me(token)
    user = user.fetch
    #respond_to do |format|
     #   format.json { render :json => user }
    #end

    logged = User.find_by facebook_id: user.identifier 

    if logged.nil?      
      @user = User.new
      @user.facebook_id = user.identifier
      @user.authentication_token = @user.generate_authentication_token
      @user.name = user.name
      @user.save!
      logged = @user
      sign_in(:user, logged)
    end
    respond_to do |format|
        format.json { render :json => logged }
    end
  end
end
