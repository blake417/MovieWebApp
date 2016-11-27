class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :released
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
