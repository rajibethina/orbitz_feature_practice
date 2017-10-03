Given(/^user in orbitz home page$/) do
  visit OrbitzCruisepage
end

When(/^user selects cruise button on orbitz page$/) do
  on(OrbitzCruisepage).cruise_tab
end

# And(/^I select the "([^"]*)" from drop down list$/) do
#   on(OrbitzCruisepage).select_cruise_destination
# end

# And(/^I select  the "([^"]*)" from drop down list$/) do
#   on(OrbitzCruisepage).select_cruise_date
# end

# And(/^I select the (.*) from drop down list$/) do |Going_to|
#   pending
# end

# And(/^I select the (.*) from drop down list$/) do |going_to|
#   pending
# end

And(/^I select the (.*) from drop down list$/) do |country_name|
  on(OrbitzCruisepage).select_cruise_destination country_name
end

And(/^user selects the (.*) from drop down list$/) do |date|
  on(OrbitzCruisepage).select_cruise_date date
end
# And(/^I select the cuba from drop down list$/) do |country_name|
#   on(OrbitzCruisepage).select_cruise_destination country_name
# end

# And(/^I select the Apr2018 from drop down list$/) do |date|
#   on(OrbitzCruisepage).select_cruise_date date
# end

And(/^I click the search button$/) do
  on(OrbitzCruisepage).search_element.click
end


Then(/^I should see the search results$/) do
  on(OrbitzFlightsSearchResultsPage).verify_search_results_are_displayed?
end


Then(/^test the yml file works$/) do
  on(OrbitzCruisepage).load_yml_data
end