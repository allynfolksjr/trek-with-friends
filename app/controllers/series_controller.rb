class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def show
  end
end
