Feature: Search for Orbitz Cruise Functionality

  Background:
   Given user in orbitz home page
   When user selects cruise button on orbitz page

  Scenario: Verifying the search results are displaying from dropdown lists
  #Given the user is on Orbitz home page
    When I click on going to drop down list
    Then I select the "cuba" from drop down list
    And I click on Departure month drop down list
    Then I select  the "Aug 2017" from drop down list
    And I click the search button
    Then I should see the search results

  Scenario Outline: Verifying the search results are displaying from dropdown lists
  #Given I am in Orbitz search page
    When I click on <Going_to>,<Departure_month> drop down lists
    Then I should see the following results
    Examples:
      |Going_to|Departure_month|
      |Caribean|Aug2017  |
      |Cuba    |Sep2017  |
      |Bahamas |Oct2017  |

  Scenario: Verifying the user gets the list of places should not display more than 5
    When user selects from going to drop down list
    Then verify the list of places should not display is more than 5

  Scenario: Verify user gets the only most populor places list from drop down list
    When user click on drop down list button
    Then the drop down list should display only the most populor places list

  Scenario:Verify user gets next page with out any page errors
  when user click on search button without any selection from going to and Departure month from drop down lists
    Then the next page sholud be dislpay witout any warned message
