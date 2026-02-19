package com.example.bdd;

/**
 * Simple calculator for BDD demonstration.
 */
public class Calculator {
    private int result;

    public void add(int a, int b) {
        result = a + b;
    }

    public void subtract(int from, int value) {
        result = from - value;
    }

    public void multiply(int a, int b) {
        result = a * b;
    }

    public int getResult() {
        return result;
    }
}
