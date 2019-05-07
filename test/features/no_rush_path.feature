Feature: Execute

Background:
  Given I am in the "../" directory

Scenario: rush PACKAGE without RUSH_PATH environment
  Given the variable "RUSH_PATH" is empty
   When I run "./rush hello"
   Then the output should say "/ rush error: RUSH_PATH is not set"
    And the exit code should mean failure
