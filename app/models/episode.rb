class Episode < ActiveRecord::Base
  belongs_to :season
  belongs_to :series, through: :season
end
