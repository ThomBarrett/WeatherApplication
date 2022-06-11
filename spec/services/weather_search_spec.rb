require 'rails_helper'

describe 'WeatherSearch' do

  let(:postcode) { 'IP1 1SW' }
  describe '.search_by_postcode' do

    it 'fetches the weather data from weather api' do
      expect(WeatherSearch.search_by_postcode(postcode)['location']['name']).to eq 'Ipswich'
    end
  end

  describe '.extract_temperature_from_json' do
    let(:json) { WeatherSearch.search_by_postcode(postcode) }
    it 'gets the temperature' do
      expect(WeatherSearch.extract_temperature_from_json(json)).to be_a(Float)
    end
  end
end