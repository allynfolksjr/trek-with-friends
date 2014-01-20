class SeriesController < ApplicationController
  def index
    @series = Series.all.order(series_sequence: :asc)
  end

  def show
  end
end
