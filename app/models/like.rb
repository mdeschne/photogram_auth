class Like < ApplicationRecord
  validates :user_id, :presence => true, :uniqueness => { :scope => :photo }

belongs_to :user
  belongs_to :photo


end
