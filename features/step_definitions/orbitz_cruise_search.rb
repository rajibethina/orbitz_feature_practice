Given(/^user in orbitz home page$/) do
  visit OrbitzCruisepage
end

When(/^user selects cruise button on orbitz page$/) do
  on(OrbitzCruisepage).cruise_tab
end