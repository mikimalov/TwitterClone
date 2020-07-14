class Tweet < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  belongs_to :user
end
