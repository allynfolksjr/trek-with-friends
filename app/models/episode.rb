class Episode < ActiveRecord::Base
  belongs_to :season
  has_one :series, through: :season
end
