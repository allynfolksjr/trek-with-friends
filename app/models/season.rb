class Season < ActiveRecord::Base
  belongs_to :series, touch: true
  has_many :episodes, order: "season_sequence ASC"
end
