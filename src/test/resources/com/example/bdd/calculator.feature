Feature: Calculator
  As a user
  I want to perform basic arithmetic
  So that I can verify calculations

  Scenario: Add two numbers
    Given I have a calculator
    When I add 2 and 3
    Then the result should be 5

  Scenario: Subtract two numbers
    Given I have a calculator
    When I subtract 10 from 15
    Then the result should be 5

  Scenario Outline: Multiply numbers
    Given I have a calculator
    When I multiply <a> and <b>
    Then the result should be <result>
    Examples:
      | a | b | result |
      | 3 | 4 | 12     |
      | 5 | 0 | 0      |
