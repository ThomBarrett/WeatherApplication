# frozen_string_literal: true

# WeatherSearch class is used to query WeatherApi and return Temperature Results
class WeatherSearch
  def self.search_by_postcode(postcode)
    key = 'b618835832eb470490c200325221006' # Change this to your own key
    request = "https://api.weatherapi.com/v1/current.json?key=#{key}&q=#{postcode}&aqi=no"
    response = HTTParty.get(request)
    JSON.parse(response.body)
  end

  def self.extract_temperature_from_json(json)
    json['current']['temp_c']
  end
end
