class Post < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
  validates :title, presence: true
end
