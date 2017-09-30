Feature: Search for Orbitz Cruise Functionality

  Background:
   Given user in orbitz home page
   When user selects cruise button on orbitz page

  Scenario: Verifying user search list of cruises for selected places and dates
  #Given the user is on Orbitz home page
    And I select the cuba from drop down list
    And user selects the Apr 2018 from drop down list
    And I click the search button
    Then I should see the search results

  Scenario Outline: Verifying user search list of cruises for selected places and dates
  #Given I am in Orbitz search page
    And I select the <going_to> from drop down list
    And user selects the <departure_month> from drop down list
    And I click the search button
    Then I should see the search results
    Examples:
      |going_to   |departure_month   |
      |Cuba       |  Apr 2018        |
      |Caribbean  |  Sep 2018        |
      |Bahamas    |  Oct 2018        |

  Scenario: Verify the cruise results are displayed as per cruise length
    And I select the cuba from drop down list
    And user selects the Apr 2018 from drop down list
    And user selects the "3-5 Nights" from cruise length
    And user selects the "Show Dates" from from first cruise
    And user selects the cruise from display results
    Then user should see the results
