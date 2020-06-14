class Post < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :liked_users, through: :likes, source: :user
  mount_uploader :image, ImageUploader

  def self.search(search)
    return Post.all unless search
    Post.where('text LIKE(?)', "%#{search}%")
  end
end
