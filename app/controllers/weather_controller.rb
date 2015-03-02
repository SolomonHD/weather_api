class WeatherController < ApplicationController
  def here
    @local_weather = LocalWeather.new(params[:city], params[:st])

    hurricane_url = "http://api.wunderground.com/api/61823ef325ea2b77/currenthurricane/view.json"
    @hurricane_count = HTTParty.get(hurricane_url)["currenthurricane"].length
  end
end
