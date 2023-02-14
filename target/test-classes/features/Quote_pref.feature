#Test Automation - cucumber
#Author : Akshata

@quote
Feature: Quote Test Scenario

  @quote1
  Scenario: Verify the responsiveness of Quote Application
    Given I open url "http://quote-qa.portnov.com/"
    Then  I should see page title as "Get a Quote"
    Then I resize window to 1920 and 1080
    Then element with xpath "//span[normalize-space()='Location']" should be displayed
    Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"


  @quote2
  Scenario: Verify Username field
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    Then element with xpath "//input[@name='username']" should be present
    When I type "p" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button@id='formSubmit'"
    Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
    When I type "Ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should contain text "This field is required"
    When I type "p" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button@id='formSubmit'"


  @quote3
  Scenario: Verify Name field
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@role='dialog']" should be displayed
    When I type "Test" into element with xpath "//input[@id='firstName']"
    And I type "A" into element with xpath "//input[@id='middleName']"
    And I type "Quote" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[normalize-space()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Test A Quote"


  @quote4
    #Data Driven
  Scenario Outline: Verify Name field
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@role='dialog']" should be displayed
    When I type "FirstName" into element with xpath "//input[@id='firstName']"
    And I type "MiddleName" into element with xpath "//input[@id='middleName']"
    And I type "LastName" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[normalize-space()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "FullName"

      | FirstName | MiddleName | LastName | FullName          |
      | First     | Middle     | Last     | First Middle Last |
      |  A         | B          | C        | ABC                |


  @quote5
  Scenario: Email field
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@name='email']"
    When I type "test123@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//input[@name='email']" should have attribute "value" as "test123@gmail.com"


  @quote6
  Scenario: Password field and Confirm Password field
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    When I click on element with xpath "//input[@id='password']"
    When I type "test123" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='password']" should have attribute "value" as "test123"
    When I type "test123" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//input[@id='confirmPassword']" should have attribute "value" as "test123"
    And I wait for 10 sec


  @quote7
  Scenario: Confirm Password field is disabled
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled


  @quote8
  Scenario: Privacy Policy
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 3 sec


  @quote9
  Scenario: Optional
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
       #address field
    When  I click on element with xpath "//textarea[@id='address']"
    Then  I type "123 Test Ave,Sunnyvale,CA" into element with xpath "//textarea[@id='address']"
    Then element with xpath "//textarea[@id='address']" should have attribute "value" as "123 Test Ave,Sunnyvale,CA"
       #Phone Number Field
    When I click on element with xpath "//input[@name='phone']"
    Then I type "1234567890" into element with xpath "//input[@name='phone']"
    Then element with xpath "//input[@name='phone']" should have attribute "value" as "1234567890"
       #Gender Field
    And I click on element with xpath "//input[@value='female']"
       #Car MAke Field
    And I click on element with xpath "//option[@value='Toyota']"
    And I click on element with xpath "//option[@value='BMW']"
    And I click on element with xpath "//option[@value='Ford']"
       #country Field
    And I click on element with xpath "//option[@value='USA']"
    And I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 5 sec
       # 3rd party
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 3 sec

  @quote10
  Scenario: verify submitted form
    Given I open url "https://skryabin.com/market/quote.html"
    Then  I should see page title as "Get a Quote"
    Then element with xpath "//div[@id='quotePageResult']" should be displayed
    Then element with xpath "//div[@id='quotePageResult']" should contain text "p"
    Then element with xpath "//b[@name='username']" should contain text "p"
    And I wait for 3 sec
    Then element with xpath "//b[@name='password']" should not have text as "12345"
    Then element with xpath "//b[@name='password']" should contain text "[entered]"