class AddDetailToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :title, :string
    add_column :movies, :director, :string
    add_column :movies, :storyline, :string
    add_column :movies, :watched_on, :datetime
  end
end
