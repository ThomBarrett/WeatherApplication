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
    When there are no Temperature Setting defined
    And I fill out the Temperature setting form correctly
    Then I see the relevant temperature information

  Scenario: Failing To Creating Temperature Setting Because of Validations
    Given I visit the Temperature Setting new page
    When there are no Temperature Setting defined
    And I fill out the Temperature setting form incorrectly
    Then I see the temperature error information

  Scenario: Failing To Creating Temperature Setting Because one already exists
    Given Temperature Setting are defined
    Given I visit the Temperature Setting new page
    Then I see a message that the temperatures setting already exist
