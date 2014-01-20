class SeriesController < ApplicationController
  def index
    @series = Series.all.order(series_sequence: :asc)
  end

  def show
    @series = Series.includes([:seasons]).find(params[:id])
    @seasons = @series.seasons
  end
end
