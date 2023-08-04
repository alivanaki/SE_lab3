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

  Scenario Outline: mathematical operation
    Given Three input values, <first> and <second> and <operator>
    When I want to the result
    Then I expect the result <result>

    Examples:
      | first | second | operator | result |
      | 6     | 2      | *        | 12     |
      | 6     | 2      | /        | 3      |
      | 6     | 2      | ^        | 36     |