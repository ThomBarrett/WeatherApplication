require 'rails_helper'

describe 'TemperatureCalculator' do
  describe '.how_hot_is_it' do
    subject { TemperatureCalculator }
    let!(:temperature_setting) { create(:temperature_setting) }

    it 'receives a cold temperature and returns cold' do
      expect(subject.how_hot_is_it(-5)).to eq 'cold'
    end

    it 'receives a cold temperature and returns warm' do
      expect(subject.how_hot_is_it(55)).to eq 'warm'
    end

    it 'receives a cold temperature and returns hot' do
      expect(subject.how_hot_is_it(105)).to eq 'hot'
    end
  end
end
