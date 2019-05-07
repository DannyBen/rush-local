Feature: Version

Background:
  Given I am in the "../" directory
    And the variable "RUSH_PATH" is "./repo"

Scenario: Run rush --version
   When I run "./rush --version"
   Then the output should match "\d+\.\d+\.\d+"
