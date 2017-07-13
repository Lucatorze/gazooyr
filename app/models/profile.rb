class Profile < ApplicationRecord
  # has_one  :user
  attr_accessible :avatar
  mount_uploader :avatar, AvatarUploader
end
