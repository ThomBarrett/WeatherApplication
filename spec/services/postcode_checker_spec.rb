# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength
describe PostcodeChecker do
  describe '.uk_postcode_check' do
    context 'the method is provided with five random uk postcodes' do
      it 'should recognise them as uk postcodes' do
        postcodes = ['SE1P 4AR', 'B95 5RF', 'LN5 8NG', 'FK18 8NF', 'SG15 6AQ']
        result = true
        postcodes.each do |postcode|
          result = false unless PostcodeChecker.uk_postcode_check postcode
        end

        expect(result).to eq true
      end
    end

    context 'the method is provided with 5 random USA zipcodes' do
      it 'should not recognise them as uk postcodes' do
        postcodes = [Faker::Address.zip, Faker::Address.zip, Faker::Address.zip,
                     Faker::Address.zip, Faker::Address.zip]
        result = false
        postcodes.each do |postcode|
          result = true if PostcodeChecker.uk_postcode_check postcode
        end

        expect(result).to eq false
      end
    end

    context 'the method is provided with an empty string' do
      it 'should not recognise it as uk postcodes' do
        expect(PostcodeChecker.uk_postcode_check('')).to eq false
      end
    end

    context 'the method is provided with nil' do
      it 'should not recognise it as uk postcodes' do
        expect(PostcodeChecker.uk_postcode_check(nil)).to eq false
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
