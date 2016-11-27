class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :movies, through: :watched_movies
  has_secure_password
end
