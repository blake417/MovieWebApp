class Movie < ApplicationRecord
  belongs_to :genre
  has_many :users, through: :watched_movies

  def self.to_array_for_select_field
    Movie.all.map{ |movie| [movie.title, movie.id] }
  end
end
