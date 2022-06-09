# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TemperatureSetting, type: :model do
  it 'validates presence of cold temperature' do expect(subject).to validate_presence_of(:cold_temperature) end
  it 'validates presence of warm temperature' do expect(subject).to validate_presence_of(:warm_temperature) end
  it 'validates presence of hot temperature' do expect(subject).to validate_presence_of(:hot_temperature) end

  it 'validates cold temperature is less than warm temperature and hot temperature' do
    subject.cold_temperature = 100
    subject.warm_temperature = 25
    subject.hot_temperature = 50
    expect(subject.valid?).to eq false
  end

  it 'validates hot temperature is greater than cold temperature and warm temperature' do
    subject.cold_temperature = 25
    subject.warm_temperature = 50
    subject.hot_temperature = 30
    expect(subject.valid?).to eq false
  end

  it 'validates warm temperature is greater than cold temperature but colder than hot temperature' do
    subject.cold_temperature = 0
    subject.warm_temperature = 50
    subject.hot_temperature = 100
    expect(subject.valid?).to eq true
  end
end
