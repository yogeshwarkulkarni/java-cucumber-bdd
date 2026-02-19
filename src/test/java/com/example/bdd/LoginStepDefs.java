package com.example.bdd;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

/**
 * Step definitions for login scenarios (demonstration only - no real UI).
 */
public class LoginStepDefs {
    private String username;
    private String password;
    private String currentScreen;
    private String message;

    @Given("the login page is displayed")
    public void the_login_page_is_displayed() {
        currentScreen = "login";
    }

    @When("I enter username {string} and password {string}")
    public void i_enter_username_and_password(String user, String pass) {
        username = user;
        password = pass;
        if ("validpass".equals(pass)) {
            currentScreen = "dashboard";
            message = "Welcome, " + user;
        } else {
            currentScreen = "login";
            message = "Invalid credentials";
        }
    }

    @Then("I should see the dashboard")
    public void i_should_see_the_dashboard() {
        assertEquals("dashboard", currentScreen);
    }

    @Then("I should see welcome message {string}")
    public void i_should_see_welcome_message(String expected) {
        assertTrue(message.contains(expected));
    }

    @Then("I should see error message {string}")
    public void i_should_see_error_message(String expected) {
        assertEquals(expected, message);
    }
}
