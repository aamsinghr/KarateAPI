@all
Feature: Users
  I want to test users end point

  Background: 
    * url 'https://reqres.in'

  Scenario: List Users
    Given path 'api/users'
    When method get
    Then status 200

  Scenario: Single User
    Given path 'api/users/2'
    When method get
    Then status 200

  @negative
  Scenario: Single User not found
    Given path 'api/users/23'
    When method get
    Then status 404

  @ignore
  Scenario: Title of your scenario
    * print 'Hello skipe me'
