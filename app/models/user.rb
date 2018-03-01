class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def self.column_name
    ["dvd_title", "studio", "released", "status", "sound", "versions", "price", "rating", "year", "genre", "aspect", "upc", "dvd_release_date", "movie_id", "timestamp", "updated"]
  end
end
