
# Author Akshata
#exercises with webdriver


Feature: Exercises

  Scenario: Load web page and verify page details
    Given I navigate to "quote"
    Then I get page information
    Then I wait for 5 sec
    Then I modify window to max size


  @webdriver2
  Scenario: Email field validation
    Given I navigate to "quote"
    Then I modify window to max size
    When I type "abc" to email field
    And I hit Submit button
    Then error message "Please enter a valid email address." should be displayed
    Then I clear email field
    Then error message "This field is required." should be displayed
    Then I type "email@emailserver.com" to email field
    Then no error message should be displayed for email field
    Then take a break


  @webdriver3
  Scenario: Email field validation
    Given I open a form
    Then I fill Email
    And I click submit button




