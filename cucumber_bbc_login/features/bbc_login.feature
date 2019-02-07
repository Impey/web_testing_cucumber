Feature: BBC Login

  Scenario: Inputting incorrect username and credntials shows an error
    Given I access the bbc login page
    And I input incrrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account
