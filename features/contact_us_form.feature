@navigation
Feature: As a visitor I want to be able to contact TDL using the contact us form
  Background:
    Given I am on the contact us page
    And I should see Contact Us page

#    TODO: Create a scenario for filling contact us form
  @wip
  Scenario: Form filling
    When I fill in "Karlis Vejs + Karis!@£$!@£$" as first name
    And I fill in "!@£$!@£$!@£$" as last name
    And I select "services" option from Topic dropdown
