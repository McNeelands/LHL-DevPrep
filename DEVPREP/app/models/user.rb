class User < ActiveRecord::Base
  has_many :posts
  has_many :likes
  has_many :comments
  validates :first_name, :email,  presence: true
  validates :email, uniqueness: true
  validates :first_name, length: { minimum: 2 }
  has_attached_file :avatar, default_url: "http://iconshow.me/media/images/ui/ios7-icons/png/512/contact-outline.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  has_attached_file :cover, default_url: "/images/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  acts_as_messageable
  has_secure_password

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end

  def admin?
    self.role == 'admin'
  end

  def self.random_gen
    arr = ["Welcome", "Sensei", "Ninja", "Master", "Lord", "Jedi"]
    arr.sample
  end

end
