class Series < ActiveRecord::Base
  has_many :seasons, -> {order(season_number: :asc)}
  has_many :episodes, through: :seasons
end
