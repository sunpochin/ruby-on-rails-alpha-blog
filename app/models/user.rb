class User < ApplicationRecord
  validates :username, length: {min: 3, max: 60},
    uniqueness: { case_sensitive: true },
    presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i    
  validates :email, length: {min: 3, max: 60},
    presence: true,
    uniqueness: {case_sensitive: true}, 
    format: { with: VALID_EMAIL_REGEX }
end

