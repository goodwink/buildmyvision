class User < ActiveRecord::Base
  has_one :customer

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_protected :staff, :alpha, :beta

  before_create :publish_lead

  def publish_lead
    SunnyTrail.new.new_signup(self.email)
    Trello::Card.create(name: self.email, list_id: '4f29d03821403b8c28acf14c')

    true
  end
end
