# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TemperatureSetting, type: :model do
  it 'validates presence of cold temperature' do
    expect(subject).to validate_presence_of(:cold_temperature)
  end

  it 'validates presence of warm temperature' do
    expect(subject).to validate_presence_of(:warm_temperature)
  end

  it 'validates presence of hot temperature' do
    expect(subject).to validate_presence_of(:hot_temperature)
  end
end
