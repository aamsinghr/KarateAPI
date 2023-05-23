@all @users
Feature: Users Post
  I want to test users end point

  Background: 
    * url 'https://reqres.in'

  Scenario: Create User
    Given path 'api/users'
    And request { "name": "Aam", "job": "SDET" }
    When method post
    Then status 201
    And print 'ID of user created:', response.id
    And match response.name == 'Aam'
    And match response.job == 'SDET'

  Scenario: Update User
    Given path 'api/users/2'
    And request { "name": "Aam", "job": "SDET" }
    When method put
    Then status 200
    And match response.name == 'Aam'
    And match response.job == 'SDET'

  Scenario: Partial Update User
    Given path 'api/users/2'
    And request { "name": "Aam", "job": "SDET" }
    When method patch
    Then status 200
    And match response.name == 'Aam'
    And match response.job == 'SDET'

  Scenario: Delete User
    Given path 'api/users/2'
    And request { "name": "Aam", "job": "SDET" }
    When method delete
    Then status 204