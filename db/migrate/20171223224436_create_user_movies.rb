class CreateUserMovies < ActiveRecord::Migration
  def change
    create_table :user_movies do |t|
      t.references :user, index: true
      t.references :movie, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_movies, :users
    add_foreign_key :user_movies, :movies
  end
end
