# frozen_string_literal: true

require 'rails_helper'

describe TemperatureSettingsController do
  describe 'POST create' do

  end

  describe 'DELETE destroy' do

  end

  describe 'PATCH update' do

  end

  describe 'GET show' do
    it 'assigns temperature_settings' do
      temperature_setting = TemperatureSetting.create(cold_temperature: 0, warm_temperature: 50, hot_temperature: 100)
      get :show
      expect(assigns(:temperature_setting)).to eq TemperatureSetting.first
    end

    it 'renders the show page' do
      get :show
      expect(response).to render_template("show")
    end
  end

  describe 'GET new' do
    subject { get :new }

    it 'creates a new TemperatureSetting' do
      subject
      expect(assigns(:temperature_setting)).to a_kind_of TemperatureSetting
    end
  end
end
