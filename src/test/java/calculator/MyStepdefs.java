package calculator;

import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

public class MyStepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;

    private String operator;

    private double result;

    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("^Three input values, (-?\\d+) and (-?\\d+) and ([/^*])$")
    public void threeInputValuesFirstAndSecondAndOperator(int arg0, int arg1, String arg2) {
        value1 = arg0;
        value2 = arg1;
        operator = arg2;
    }

    @When("^I want to the result$")
    public void iWantToTheResult() {
        if (operator.equalsIgnoreCase("*"))
            result = calculator.multiply(value1, value2);
        else if (operator.equalsIgnoreCase("/"))
            result = calculator.divide(value1, value2);
        else result = calculator.power(value1, value2);

    }

    @Then("^I expect the result (.+)$")
    public void iExpectTheResultResult(String arg0) {
        double num = Double.parseDouble(arg0);
        Assert.assertEquals(num, result, 0.001);
    }

}