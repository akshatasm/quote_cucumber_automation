@predefined
Feature: Smoke steps
#Author Akshata
#Automated search engines for different websites

  @predefined1
  Scenario: Steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Steps for gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I click on element with xpath "//div[@class='install-cta chrome']//span[@class='popover-close install-cta-close'][normalize-space()='×']"
    And I wait for 3 sec
    And I click on element with xpath "//a[@class='icon-mobile-app']"
    And I wait for 3 sec
    Then element with xpath "//input[@id='q']" should be present
    When I type "Software Quality Assurance" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//i[@class='fas fa-search new']"
    Then I click on element with xpath "//div[@class='gs-title']//a[@class='gs-title'][contains(text(),'Software Engineering |')]//b[contains(text(),'Software Quality Assurance')]"
    And I switch to new window
    And I wait for 5 sec
    Then I should see page title as "Software Engineering | Software Quality Assurance - GeeksforGeeks"
    And I wait for 2 sec
    And I switch to first window
    And Is


  @predefined3
  Scenario: Steps for DuckDuckGo
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Software Quality Control" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element with xpath "//input[@id='search_button_homepage']"

  @predefined4
  Scenario: Steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title as "Your private und anonymous search engine Swisscows"
    When I mouse over element with xpath "//p[normalize-space()='Our Services']"
    And I wait for 1 sec
    Then element with xpath "//input[@placeholder='Your search. Your business.']" should be present
    When I type "Software Quality Planning" into element with xpath "//input[@placeholder='Your search. Your business.']"
    Then I click on element with xpath "//button[@type='submit']//*[name()='svg']"
    And I wait for 1 sec

  @predefined5
  Scenario: Steps for Yandex.com
    Given I open url "https://www.yandex.com/"
    Then I should see page title as "Yandex"
    When I type "SDLC" into element with xpath "//input[@id='text']"
    And I wait for 5 sec
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then element with xpath "//div[@class='serp-adv__found']" should contain text "results found"
    And I wait for 5 sec

  @predefined6
  Scenario: Steps for Search encrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@placeholder='Search...']" should be present
    When I type "Software Testing" into element with xpath "//input[@placeholder='Search...']"
    Then I click on element with xpath "//i[@class='fas fa-search']"
    And I wait for 3 sec

  @predefined7
  Scenario: Steps for Search encrypt
    Given I open url "https://www.startpage.com"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then element with xpath "//input[@id='q']" should be present
    When I type "Bug Report" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//form[@id='search']//button[@id='search-btn']"
    And I wait for 3 sec

  @predefined8
  Scenario: Steps for Ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    And I wait for 5 sec
    Then I click on element with xpath "//button[@aria-label='Toggle menu']//*[name()='svg']"
    And I wait for 5 sec
    Then element with xpath "//input[@placeholder='Search the web to plant trees...']" should be present
    When I type "Test Case" into element with xpath "//input[@placeholder='Search the web to plant trees...']"
    Then I click on element with xpath "//button[@aria-label='Submit']//*[name()='svg']"
    And I wait for 3 sec

  @predefined9
  Scenario: Steps for Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Test Plan" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//input[@name='btnG']"
    And I wait for 3 sec

  @predefined10
  Scenario: Steps for ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "Test Suit" into element with xpath "//input[@id='fld_q']"
    Then I click on element with xpath "//div[@id='btn_search']"
    And I wait for 3 sec

  @predefined11
  Scenario: Steps for giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    And I wait for 3 sec
    And I click on element with xpath "//i[@class='fas fa-times']"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Jira" into element with xpath "//input[@id='site-search']"
    Then I click on element with xpath "//i[@class='fas fa-search']"
    And I wait for 3 sec
    








