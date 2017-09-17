Given(/^user is on Orbitz home page$/) do
  visit OrbitzHomePage
end

And(/^user selects round trip button under flight tab$/) do
on(OrbitzHomePage).select_flight_tab
on(OrbitzHomePage).select_roundtrip_tab
end


When(/^user enter (.*) in flying from edit box and selects (.*) option$/) do |city_name,airport_name|
  on(OrbitzHomePage).select_dept_name city_name,airport_name
end


When(/^user enter (.*) in flying to edit box and selects (.*) option$/) do |city_name,airport_name|
  on(OrbitzHomePage).select_arr_name city_name,airport_name
end