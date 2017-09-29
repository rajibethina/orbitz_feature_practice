Feature: Search for Orbitz Cruise Functionality

  Background:
   Given user in orbitz home page
   When user selects cruise button on orbitz page

#  Scenario: Verifying the search results are displaying from dropdown lists
#  #Given the user is on Orbitz home page
#    And I select the "cuba" from drop down list
#    And I select  the "Apr 2018" from drop down list
#    And I click the search button
#   Then I should see the search results

  Scenario Outline: Verifying the search results are displaying from dropdown lists
  #Given I am in Orbitz search page
    And I select the <going_to> from drop down list
    And I select the <departure_month> from drop down list
    And I click the search button
    Then I should see the search results
    Examples:
      |going_to   |departure_month  |
      |Cuba       |  Apr2018        |
      |Caribbean  |  Sep2018        |
      |Bahamas    |  Oct2018        |
#
#  Scenario: Verifying the user gets the list of places should not display more than 5
#    When user selects from going to drop down list
#    Then verify the list of places should not display is more than 5
#
#  Scenario: Verify user gets the only most populor places list from drop down list
#    When user click on drop down list button
#    Then the drop down list should display only the most populor places list
#
#  Scenario:Verify user gets next page with out any page errors
#  when user click on search button without any selection from going to and Departure month from drop down lists
#    Then the next page sholud be dislpay witout any warned message
