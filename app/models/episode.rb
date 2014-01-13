class Episode < ActiveRecord::Base
  belongs_to :season, touch: true
  has_one :series, through: :season
end
