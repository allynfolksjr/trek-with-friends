class EpisodeController < ApplicationController

  def show
    id = params[:id]
    @episode = Episode.includes([:season, :series]).find(id)
    @season = @episode.season
    @series = @episode.series
  end
end
