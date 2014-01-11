class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.references :season, index: true
      t.string :title
      t.string :description
      t.integer :series_sequence
      t.integer :season_sequence

      t.timestamps
    end
  end
end
