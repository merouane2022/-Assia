class Comment < ApplicationRecord
  belongs_to :blog
  validates :comment_text, presence: true
end
