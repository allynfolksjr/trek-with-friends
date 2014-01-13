namespace :trek do
  desc "Load all Star Trek series, seasons, and episode metadata"
  task load_all: :environment do
    purge_data

    load_series.each_with_index do |series, index|
      trek_series = Series.create!({name: series.name, description: series.overview, series_sequence: index+1})
      series.number_of_seasons.times do |season_number|
        season_data = Tmdb::Season.detail(series.id, season_number+1)
        season = trek_series.seasons.create({season_number: season_number+1})
        season_data["episodes"].each do |e|
          season.episodes.create!({title: e["name"], season_sequence: e["episode_number"], description: e["overview"]})
        end
      end
    end
  end

  private

  def load_series
    @tos = Tmdb::TV.detail 253
    @tng = Tmdb::TV.detail 655
    @ds9 = Tmdb::TV.detail 580
    @voy = Tmdb::TV.detail 1855
    @ent = Tmdb::TV.detail 314
    @all_seasons = [@tos, @tng, @ds9, @voy, @ent]
  end

  def purge_data
    [Series, Episode, Season].each do |model|
      model.delete_all
    end
  end

end
