class Post< ApplicationRecord
  #mount_uploader :image, ImageUploader
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 4}
end
