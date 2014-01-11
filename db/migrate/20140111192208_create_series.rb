class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name
      t.string :description
      t.string :series_sequence

      t.timestamps
    end
  end
end
