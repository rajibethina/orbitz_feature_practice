Given(/^user in orbitz home page$/) do
  visit OrbitzCruisepage
end

When(/^user selects cruise button on orbitz page$/) do
  on(OrbitzCruisepage).cruise_tab
end

And(/^I select the "([^"]*)" from drop down list$/) do |arg|
  on(OrbitzCruisepage).select_cruise_destination 'Cuba'
end

And(/^I select  the "([^"]*)" from drop down list$/) do |arg|
  on(OrbitzCruisepage).select_cruise_date 'Apr 2018'
end

And(/^I click the search button$/) do
  on(OrbitzCruisepage).search_element.click
end

Then(/^I should see the search results$/) do
  pending
end

