
Feature: Create a new user

  Background:
    * def baseUrl = 'https://www.krafttechexlab.com/sw/api/v1/allusers'

  Scenario: Create a new user
    Given url baseUrl
    * path 'register'
    And header Accept = 'application/json; charset=UTF-8'
    And header Content-Type = 'application/json; charset=UTF-8'
    And request
      """
      {
  "name": "Karetee Kid333",
  "email": "karateeKid3333@krafttechexlab.com",
  "password": "123467",
  "about": "About Me",
  "terms": "10"
}
      """
    When method POST
    Then status 200
    * print response

  #  * match response.name == "Karetee KidBoy"
    * print response.token
    * def token = response.token