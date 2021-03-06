class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.find_for_database_authentication warden_conditions
    conditions = warden_conditions.dup
    login = conditions.delete(:username)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
  end

  has_many :gazooy

  mount_uploader :avatar, AvatarUploader

  # after_create :create_profile

  # def create_profile
  #   profile= Profile.new(user_id:self.id)
  #  profile.save
  # end
  # belongs_to :profile

end
