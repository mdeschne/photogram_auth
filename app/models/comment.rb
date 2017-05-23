class Comment < ActiveRecord

  validates :user_id, :photo_id, :body, :presence => true

  belongs_to :photo
  belongs_to(:user, class_name: "User", foreign_key: "user_id")
end
