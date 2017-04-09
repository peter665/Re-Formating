class User < ApplicationRecord
  VALID_EMAIL = /\A[\w,\.-]+@[\w,\-.]+\w\.{1}[a-z]+\z/i
  validates :username, presence:true, length: {minimum: 3, maximum: 25}
  validates :email, presence:true, format: { with: VALID_EMAIL}
  validates :password, presence:true, length: {minimum: 6}
end
