Feature: Data Driven Test


  Scenario Outline: login users

    Given url 'https://www.krafttechexlab.com/sw/api/v1/allusers/login'
    * form field email = '<email>'
    * form field password = '<password>'

    When method POST
    * status 200
    * print response

    Examples:
      |email|password|
      | thomas@test.com  | Test123456! |
      | Ramanzi@test.com | Test123456  |
      | user11@test.com  | Test123456  |
      | user22@test.com  | Test123456  |
      | user33@test.com  | Test123456  |
      | user44@test.com  | Test123456  |
      | user55@test.com  | Test123456  |
      | user66@test.com  | Test123456  |




    Scenario Outline:

      Given url 'https://www.krafttechexlab.com/sw/api/v1/allusers/login'
      * form field email = '<email>'
      * form field password = '<password>'

      When method POST
      * status 200
      * print response
      Examples:
      |read('data/users.csv'|

      # 38 satırdaki satır data package içindeki users.csv deki verileri çekmizi sağlıyor.
