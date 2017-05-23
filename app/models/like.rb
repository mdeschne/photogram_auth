class Like < ActiveRecord
  validates :user_id, :presence => true
  validates :uniqueness => { :scope => :photo }

  belongs_to :user
    belongs_to :photo

end
