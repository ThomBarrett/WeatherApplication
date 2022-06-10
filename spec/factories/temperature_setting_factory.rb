# frozen_string_literal: true

# This will guess the User class
FactoryBot.define do
  factory :temperature_setting do
    cold_temperature { 0 }
    warm_temperature { 50 }
    hot_temperature { 100 }
  end
end
