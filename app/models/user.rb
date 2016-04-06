
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  # validates_date :birth_date, :after => lambda { 200.years.ago },
  #                             :after_message => "Must be younger than 200 years",
  #                             :before => lambda { 3.years.ago },
  #                             :before_message => "Must be at least 3 years old"
  has_many :event_users
  has_many :events, through: :event_users
  has_many :user_preferences
  mount_uploader :image, ImageUploader
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

end
