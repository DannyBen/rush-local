Feature: Execute

Background:
  Given I am in the "../" directory
    And the variable "RUSH_REPO" is "./repo"

Scenario: rush PACKAGE with RUSH_REPO environment
   When I run "./rush hello"
   Then the output should say "What's the rush?"
    And the output should say "./repo/hello"

Scenario: rush NESTED/PACKAGE
   When I run "./rush nested/hi"
   Then the output should say "What's the nested rush?"
    And the output should say "./repo/nested/hi"

Scenario: rush .PACKAGE
   When I run "./rush .hello"
   Then the output should say "This is a simple example"

Scenario: rush /PACKAGE/FILE
   When I run "./rush /hello/main"
   Then the output should say "echo"
    And the output should say "What's the rush?"


