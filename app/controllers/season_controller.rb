class SeasonController < ApplicationController
  def index
    @series = Series.find params[:series_id]
    @seasons = @series.seasons.includes([:episodes])
  end

  def show
  end
end
