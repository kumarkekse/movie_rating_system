class Movie < ApplicationRecord
  has_many :reviews, -> { where(parent_id: nil) }

  def self.column_name
    %w(dvd_title studio released status sound versions price rating year genre aspect upc dvd_release_date movie_id timestamp updated)
  end
end
