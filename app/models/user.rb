class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #thanks to Michael Hartl from www.railstutorial.org
  validates(:name, length: {minimum:3, maximum:15}, presence: true, uniqueness: true)
  validates(:email, length: {minimum:6, maximum:40}, presence: true, uniqueness: true,
            format: {with: VALID_EMAIL_REGEX})
end
