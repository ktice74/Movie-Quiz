class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :imdb_id
      t.integer :year
      t.string :box_office_total
      t.integer :box_office_ranking
      t.text   :imdb_fields
    end
  end
end
