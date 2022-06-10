# frozen_string_literal: true

require 'rails_helper'

describe TemperatureSettingsController do
  describe 'POST create' do
    let(:post_create) {
      post :create, params: { temperature_setting: { cold_temperature: 0, warm_temperature: 50, hot_temperature: 100 } }
    }

    it 'creates a temperature setting' do
      post_create
      expect(TemperatureSetting.count).to eq 1
    end

    it 'sets cold_temperature correctly' do
      post_create
      expect(TemperatureSetting.first.cold_temperature).to eq 0
    end

    it 'sets warm_temperature correctly' do
      post_create
      expect(TemperatureSetting.first.warm_temperature).to eq 50
    end

    it 'sets hot_temperature correctly' do
      post_create
      expect(TemperatureSetting.first.hot_temperature).to eq 100
    end
  end

  describe 'DELETE destroy' do

  end

  describe 'PATCH update' do
    let(:temperature_setting) { create(:temperature_setting) }
    let(:patch_update) {
        patch :update, params: { id: temperature_setting.id, temperature_setting: {
          cold_temperature: 10, warm_temperature: 60, hot_temperature: 110 } } }

    it 'updates the temperature setting' do
      expect { patch_update }.to change { temperature_setting.reload.cold_temperature }.to 10
    end
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
