class Genre < ApplicationRecord
  validates :name, uniqueness: true

  def self.to_array_for_select_field
    Genre.all.map{ |genre| [genre.name, genre.id] }
  end
end
