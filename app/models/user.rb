class User < ApplicationRecord
  has_many :microposts
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
