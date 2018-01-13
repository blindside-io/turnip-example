Feature: Creating An Account
  Scenario:
    Given I visit the page "/users/sign_up"
    When I fill in the form with:
      | Label    | Value             |
      | Email    | me1@bobbytables.io |
      | Password | password          |
      | Password confirmation | password          |
      And I click the "Sign up" button
    Then I have created an account