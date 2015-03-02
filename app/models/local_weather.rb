class LocalWeather
  def initialize(city, state_code="NC")
    url = "http://api.wunderground.com/api/61823ef325ea2b77/conditions/q/#{state_code}/#{city}.json"
    @data = HTTParty.get(url)
  end

  def current_temperature
    @data["current_observation"]["temp_f"]
  end

  def humidity
    @data["current_observation"]["relative_humidity"]
  end

  def location_name
    @data["current_observation"]["display_location"]["full"]
  end
end
