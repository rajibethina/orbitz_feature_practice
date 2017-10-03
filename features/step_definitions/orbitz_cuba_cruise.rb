# And(/^user selects the "3\-5 Nights" from cruise length$/) do |select_nights|
#   on(OrbitzCubaCruiseResults).select_cruise_length '3-5 Nights'
# end

And(/^user selects the 3\-5 Nights from cruise length$/) do |select_nights|
  on(OrbitzCubaCruiseResults).select_cruise_length '3-5 Nights'
end

And(/^user selects the "([^"]*)" from from first cruise$/) do |arg|
  pending
end

And(/^user selects the cruise from display results$/) do
  pending
end

Then(/^user should see the results$/) do
  pending
end

