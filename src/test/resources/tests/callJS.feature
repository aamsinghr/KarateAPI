@js
Feature: Using JavaScript Function

Scenario: Get Current Date
    * def currentDate = call read('classpath:js/currentDate.js')
    * print 'Current Date:', currentDate