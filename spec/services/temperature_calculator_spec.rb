# frozen_string_literal: true

require 'rails_helper'
# rubocop:disable Metrics/BlockLength
describe 'TemperatureCalculator' do
  describe '.how_hot_is_it' do
    subject { TemperatureCalculator }
    context 'There are temperature settings' do
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

      it 'receives nil temperature and returns unknown' do
        expect(subject.how_hot_is_it(nil)).to eq 'unknown'
      end
    end

    context 'There are no temperature settings' do
      it 'receives a cold temperature and returns unknown' do
        expect(subject.how_hot_is_it(-5)).to eq 'unknown'
      end

      it 'receives a cold temperature and returns unknown' do
        expect(subject.how_hot_is_it(55)).to eq 'unknown'
      end

      it 'receives a cold temperature and returns hot' do
        expect(subject.how_hot_is_it(105)).to eq 'unknown'
      end

      it 'receives nil temperature and returns unknown' do
        expect(subject.how_hot_is_it(nil)).to eq 'unknown'
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
