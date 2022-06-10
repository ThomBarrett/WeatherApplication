# frozen_string_literal: true

Given('I visit the Temperature Setting show page') do
  visit temperature_setting_path
end

Given('I visit the Temperature Setting new page') do
  visit new_temperature_setting_path
end

Given('I visit the Temperature Setting edit page') do
  visit edit_temperature_setting_path
end

When('there are no Temperature Setting defined') do
end

Given('Temperature Setting are defined') do
  @temperature_setting = create(:temperature_setting)
end

Then('I see the relevant temperature information') do
  expect(page).to have_content "Cold Temperature: #{TemperatureSetting.first.cold_temperature}"
  expect(page).to have_content "Warm Temperature: #{TemperatureSetting.first.warm_temperature}"
  expect(page).to have_content "Hot Temperature: #{TemperatureSetting.first.hot_temperature}"
end

Then('I see the temperature error information') do
  expect(page).to have_content 'preventing these settings being saved:'
end

Then('I see a message that the temperatures setting are not defined') do
  expect(page).to have_content 'Temperature Settings have not been defined'
end

Then('I see a link to the page where temperature setting can be defined') do
  expect(page).to have_content 'You can define temperature settings here'
end

Then('I see a message that the temperatures setting already exist') do
  expect(page).to have_content 'You cannot create another Temperature Setting'
end

When('I fill out the Temperature setting form correctly') do
  fill_in 'temperature_setting_cold_temperature', with: 0
  fill_in 'temperature_setting_warm_temperature', with: 50
  fill_in 'temperature_setting_hot_temperature', with: 100
  click_on 'Create Temperature setting'
end

When('I fill out the Temperature setting edit form correctly') do
  fill_in 'temperature_setting_cold_temperature', with: 10
  fill_in 'temperature_setting_warm_temperature', with: 60
  fill_in 'temperature_setting_hot_temperature', with: 110
  click_on 'Update Temperature setting'
end

When('I fill out the Temperature setting form incorrectly') do
  fill_in 'temperature_setting_cold_temperature', with: 100
  fill_in 'temperature_setting_warm_temperature', with: 50
  fill_in 'temperature_setting_hot_temperature', with: 0
  click_on 'Create Temperature setting'
end

When('I fill out the Temperature setting edit form incorrectly') do
  fill_in 'temperature_setting_cold_temperature', with: 100
  fill_in 'temperature_setting_warm_temperature', with: 50
  fill_in 'temperature_setting_hot_temperature', with: 0
  click_on 'Update Temperature setting'
end
