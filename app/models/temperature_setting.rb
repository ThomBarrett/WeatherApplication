# frozen_string_literal: true

class TemperatureSetting < ActiveRecord::Base
  validates :cold_temperature, presence: true
  validates :cold_temperature, numericality: { less_than: :warm_temperature }
  validates :cold_temperature, numericality: { less_than: :hot_temperature }
  validates :warm_temperature, presence: true
  validates :warm_temperature, numericality: { less_than: :hot_temperature }
  validates :warm_temperature, numericality: { greater_than: :cold_temperature }
  validates :hot_temperature, presence: true
  validates :hot_temperature, numericality: { greater_than: :cold_temperature }
  validates :hot_temperature, numericality: { greater_than: :warm_temperature }
end
