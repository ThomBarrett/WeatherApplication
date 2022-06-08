# frozen_string_literal: true

class TemperatureSetting < ActiveRecord::Base
  validates :cold_temperature, presence: true
  validates :warm_temperature, presence: true
  validates :hot_temperature, presence: true
end