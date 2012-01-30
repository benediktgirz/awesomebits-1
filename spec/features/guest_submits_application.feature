Feature: A visitor to the site submits an application

  Scenario: A visitor submits and application
    Given I am on the homepage
    When I submit a project to the "Boston" chapter
    Then I should be thanked
    And I should get an email telling me the application went through

  Scenario: A visitor messes up while submitting an application
    Given I am on the homepage
    When I submit a project to the "Boston" chapter, but it fails
    Then I should see the error
    When I fix the error and resubmit
    Then I should be thanked
    And I should get an email telling me the application went through