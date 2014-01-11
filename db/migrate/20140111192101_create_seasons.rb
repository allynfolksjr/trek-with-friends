class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.references :series, index: true
      t.string :description
      t.integer :season_number

      t.timestamps
    end
  end
end
