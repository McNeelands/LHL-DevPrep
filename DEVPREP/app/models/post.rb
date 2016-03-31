class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments
  has_attached_file :cover, default_url: "/images/default.jpg"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  validates :title, length: { maximum: 50 }
  validates :title, :description, :content, presence: true

  def like_count
    self.likes.size
 end
end
