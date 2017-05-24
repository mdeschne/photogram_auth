class Photo < ActiveRecord::Base
  validates :user_id, :presence => true

  has_many :fans, :through => :likes, :source => :user
  belongs_to(:user, class_name: "User", foreign_key: "user_id")
    has_many :comments
      has_many :likes
end
