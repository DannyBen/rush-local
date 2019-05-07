Feature: Help

Background:
  Given I am in the "../" directory
    And the variable "RUSH_REPO" is "./repo"

Scenario: Run rush
   When I run "./rush"
   Then the output should say "Usage:"
    And the output should say "rush -h | --help"
    And the output should not say "Examples"

Scenario: Run rush --help
   When I run "rush --help"
   Then the output should say "Usage"
    And the output should say "Examples"
