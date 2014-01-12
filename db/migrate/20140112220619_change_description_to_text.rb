class ChangeDescriptionToText < ActiveRecord::Migration
  def change
    remove_column :episodes, :description
    remove_column :seasons, :description
    remove_column :series, :description
    add_column :episodes, :description, :text
    add_column :seasons, :description, :text
    add_column :series, :description, :text
  end
end
