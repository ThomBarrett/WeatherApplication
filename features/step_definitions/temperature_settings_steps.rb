Given('I visit the Temperature Setting show page') do
  visit temperature_setting_path
end

When('there are no Temperature Setting defined') do
end

Given('Temperature Setting are defined') do
  @temperature_setting = create(:temperature_setting)
end

Then('I see the relevant temperature information') do
  expect(page).to have_content "Cold Temperature: #{@temperature_setting.cold_temperature}"
  expect(page).to have_content "Warm Temperature: #{@temperature_setting.warm_temperature}"
  expect(page).to have_content "Hot Temperature: #{@temperature_setting.hot_temperature}"
end

Then('I see a message that the temperatures setting are not defined') do
  expect(page).to have_content 'Temperature Settings have not been defined'
end

Then('I see a link to the page where temperature setting can be defined') do
  expect(page).to have_content 'You can define temperature settings here'
end