@contact_us
Feature: As a visitor I want to be able to contact TDL using the contact us form
  Background:
    Given I am on the contact us page

  @wip
  Scenario: Contact us form positive test case
    When I fill the first name input field with "asdfasdfasdf"
    And I fill the last name input field with "Kārlis"
    And I select "to pr department" in the topic dropdown
    And I select "privacy policy" checkbox
    And I select "subscribe" checkbox
    