@tag
Feature: Calculator

  Scenario: mathematical operation (multiply)
    Given Three input values, 2 and 3 and *
    When I want to the result
    Then I expect the result 6

  Scenario: mathematical operation (divide)
    Given Three input values, 2 and 3 and /
    When I want to the result
    Then I expect the result 0.66666

  Scenario: mathematical operation (power)
    Given Three input values, 2 and 3 and ^
    When I want to the result
    Then I expect the result 8
