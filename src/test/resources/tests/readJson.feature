@readjson
Feature: Read Json and substitute variables

  Scenario: Read Json
    * def num = '1234'
    * def payload = read('classpath:data/data.json')
    * print 'Payload:', payload
