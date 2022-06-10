Feature: TemperatureSetting

  Scenario: Visiting the Temperature Setting show page when Temperature Settings have been defined
    Given Temperature Setting are defined
    And I visit the Temperature Setting show page
    Then I see the relevant temperature information

  Scenario: Visiting the Temperature Setting show page when Temperature Settings haven't been defined
    Given I visit the Temperature Setting show page
    When there are no Temperature Setting defined
    Then I see a message that the temperatures setting are not defined
    And I see a link to the page where temperature setting can be defined

  Scenario: Creating Temperature Setting
    Given I visit the Temperature Setting new page
    When I fill out the Temperature setting form correctly
    Then I am redirected to the Temperature show page
    Then I see the relevant temperature information