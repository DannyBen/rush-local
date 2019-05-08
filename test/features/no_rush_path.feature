Feature: Gracefully error when RUSH_PATH is empty

Background:
  Given I am in the "../" directory
    And the variable "RUSH_PATH" is empty

Scenario: rush PACKAGE without RUSH_PATH environment
   When I run "./rush hello"
   Then the output should say "/ rush error: RUSH_PATH is not set"
    And the exit code should mean failure
