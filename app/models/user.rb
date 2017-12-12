class User < ActiveRecord::Base
  has_many :user_novels, foreign_key: :user_id, dependent: :destroy
  has_many :novels, through: :user_novels, source: :novel

  has_many :user_movies, foreign_key: :user_id, dependent: :destroy
  has_many :movies, through: :user_movies, source: :movie
  #accepts_nested_attributes_for :user_movies, reject_if: :all_blank, allow_destroy: true

  #accepts_nested_attributes_for :user_series, reject_if: :all_blank, allow_destroy: true
end
