# Java BDD / Cucumber Framework

A simple Java-based BDD (Behavior-Driven Development) framework using Cucumber, suitable for demonstrating skills and CI/CD integration.

## Stack

- **Java 17**
- **Maven**
- **Cucumber 7** (JUnit 5 / JUnit Platform)
- **GitHub Actions** for CI

## Project structure

```
src/test/
├── java/com/example/bdd/
│   ├── RunCucumberTest.java    # JUnit 5 test runner
│   ├── Calculator.java         # Domain (demo)
│   ├── CalculatorStepDefs.java # Calculator steps
│   └── LoginStepDefs.java      # Login steps
└── resources/com/example/bdd/
    ├── calculator.feature
    └── login.feature
```

## Run tests locally

```bash
# Run all Cucumber scenarios
mvn test

# Or with verify (includes any integration phase)
mvn verify
```

Reports are generated in `target/`:

- **HTML**: `target/cucumber-reports.html`
- **JSON**: `target/cucumber.json`

## CI/CD (GitHub Actions)

- **Workflow**: `.github/workflows/ci.yml`
- **Triggers**: Push and pull requests to `main` or `master`
- **Steps**: Checkout → JDK 17 → `mvn verify` → Upload Cucumber reports as artifacts

To use: push the repo to GitHub; the workflow runs automatically. Download `cucumber-reports` from the Actions run to view the HTML report.

## Features covered

1. **Calculator** – Add, subtract, multiply with scenario outline.
2. **Login** – Success and failure flows (in-memory demo, no real UI).

## Extending

- Add more `.feature` files under `src/test/resources/com/example/bdd/`.
- Add step definition classes in `src/test/java/com/example/bdd/` with the same package so the runner picks them up via `GLUE_PROPERTY_NAME`.
