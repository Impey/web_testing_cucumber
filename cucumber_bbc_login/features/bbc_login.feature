Feature: BBC Login

  Scenario: Inputting incorrect username and credntials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account


  Scenario: Input a password that is too short
    Given I access the bbc login page
    And I input username details
    And I input a password that is too short
    When I try to login
    Then I receive an error saying the password is too short



