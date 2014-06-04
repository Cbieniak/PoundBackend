class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable   
    before_save :ensure_authentication_token      
  def create
    @user = User.new
    @user.facebook_id = params[:identifier]
    @user.name = params[:name]
    @user.save
  end 

  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end

  def email_required?
    return false
  end 

  def password_required?
    return false
  end 
end
