class WeatherappController < ActionController::Base

  require './app/services/postcode_checker'
  require './app/services/weather_search'
  require './app/services/temperature_calculator'

  def home

  end

  def search
    postcode = params[:query]
    if PostcodeChecker.uk_postcode_check postcode
      json = WeatherSearch.search_by_postcode postcode
      temperature = WeatherSearch.extract_temperature_from_json json
      @result = TemperatureCalculator.how_hot_is_it temperature
    else
      @result = "Invalid postcode"
    end
  end
end
