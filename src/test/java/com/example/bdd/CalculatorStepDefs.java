package com.example.bdd;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorStepDefs {
    private Calculator calculator;

    @Given("I have a calculator")
    public void i_have_a_calculator() {
        calculator = new Calculator();
    }

    @When("I add {int} and {int}")
    public void i_add_and(int a, int b) {
        calculator.add(a, b);
    }

    @When("I subtract {int} from {int}")
    public void i_subtract_from(int value, int from) {
        calculator.subtract(from, value);
    }

    @When("I multiply {int} and {int}")
    public void i_multiply_and(int a, int b) {
        calculator.multiply(a, b);
    }

    @Then("the result should be {int}")
    public void the_result_should_be(int expected) {
        assertEquals(expected, calculator.getResult());
    }
}
