class Movie < ActiveRecord::Base
  has_many :user_movies, foreign_key: :movie_id, dependent: :destroy
  has_many :users, through: :user_movies, source: :user
end
