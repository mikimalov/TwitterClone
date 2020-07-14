class User < ApplicationRecord
  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_secure_password

  has_many :tweets, dependent: :destroy
  # has_many :likes, dependent: :destroy
  # has_many :comments, dependent: :destroy

  validates :password, presence: true, length: {minimum: 8}
  validates :email, presence: true, uniqueness: {case_sensitive: true},
            format: { with: VALID_EMAIL_REGEX }
end
