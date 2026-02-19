Feature: User Login
  As a user
  I want to log in with valid credentials
  So that I can access the application

  Scenario: Successful login with valid credentials
    Given the login page is displayed
    When I enter username "testuser" and password "validpass"
    Then I should see the dashboard
    And I should see welcome message "Welcome, testuser"

  Scenario: Failed login with invalid password
    Given the login page is displayed
    When I enter username "testuser" and password "wrongpass"
    Then I should see error message "Invalid credentials"
