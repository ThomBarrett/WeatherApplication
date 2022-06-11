class TemperatureCalculator
  def self.how_hot_is_it(temperature)

    temperature_setting = TemperatureSetting.first
    return 'unknown' if temperature_setting.nil? || temperature.nil?

    return 'cold' if temperature <= temperature_setting.cold_temperature.to_f
    if temperature > temperature_setting.cold_temperature.to_f && temperature < temperature_setting.hot_temperature.to_f
      return 'warm'
    end
    return 'hot' if temperature >= temperature_setting.hot_temperature.to_f
  end
end
