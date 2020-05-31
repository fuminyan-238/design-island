class Post < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
end
