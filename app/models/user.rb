class User < ActiveRecord::Base
  def new
    @user = User.new
  end
  has_secure_password
  attr_accessible :email, :password, :password_confirmation
  before_save { |user| user.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  def self.authenticate(email, password)
  	user = find_by_email(email)
  	if (user && user.authenticate(password))
  		user
  	else
  		nil
  	end
  end
end	