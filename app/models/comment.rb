class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :tweet
  # belongs_to :user #not imported yet
end
