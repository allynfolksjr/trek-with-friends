class SeasonController < ApplicationController
  def index
    @series = Series.find params[:series_id]
    @seasons = @series.seasons.includes([:episodes])
  end

  def show
    @series = Series.find params[:series_id]
    @season = Season.includes([:episodes]).find(params[:id])
    @episodes = @season.episodes
  end
end
