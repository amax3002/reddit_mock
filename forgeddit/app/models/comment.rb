class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  validates :title, presence: true
end
