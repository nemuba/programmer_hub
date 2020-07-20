class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes, dependent: :destroy
  acts_as_commentable
  validates :user, :body, presence: true
  validates :image, file_size: {less_than: 2.megabytes}
end