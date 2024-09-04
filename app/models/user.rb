class User < ActiveRecord::Base
  has_many :microposts
  before_save{self.email = email.downcase}
  validates :name, presence: true, uniqueness: false ,length: {maximum: 50}
  validates :password, presence: true, uniqueness: false ,length: {minimum: 6}
  validates :email, presence: true, uniqueness: { case_sensitive: false}, length: {maximum: 255},format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  has_secure_password
end
