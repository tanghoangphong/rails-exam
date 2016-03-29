class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.text :storyline
      t.date :watched_on

      t.timestamps
    end
  end
end
