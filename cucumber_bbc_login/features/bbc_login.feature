Feature: BBC Login

  Scenario: Inputting incorrect username and credntials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account


  Scenario: Input a password that is too short
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password that is too short
    When I try to login
    Then I receive an error saying the password is too short

  Scenario: Input a username that includes incorrect character
    Given I access the bbc login page
    And I input wrong characters in username
    And I input incorrect password details
    When I try to login
    Then I receive an error saying the username is incorrect

  Scenario: Input a username without a password
    Given I access the bbc login page
    And I input username
    When I try to login
    Then I receive an error saying the password field is empty

  Scenario: Input a number only password
    Given I access the bbc login page
    And I input username
    And I input a password of only numbers
    When I try to login
    Then I receive an error saying the password field requires letters

  Scenario: Input a letter only password
    Given I access the bbc login page
    And I input username
    And I input a password of only letters
    When I try to login
    Then I receive an error saying the password field requires numbers

  Scenario: Input username that is too short
    Given I access the bbc login page
    And I input username that is too short
    And I input a password
    When I try to login
    Then I receive an error saying the username is too short
