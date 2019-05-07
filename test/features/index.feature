Feature: Index

Background:
  Given I am in the "../" directory
    And the variable "RUSH_REPO" is "./repo"

Scenario: Run rush index
   When I run "./rush index"
   Then the output should say "Package Index (./repo)"
    And the output should say "nested/hi"
    And the output should say "Shows how to use nested folders"
    And the output should say "download"
