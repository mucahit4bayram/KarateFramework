
Feature: API Tests

  Background:
  #  * def baseUrl = 'https://www.krafttechexlab.com/sw/api/v1/allusers'

        # hemen altındaki call read içinde yazan classı çalıştırıyor
    * def AuthFeature = call read('classpath:features/PostNewUser.feature
    * def UserToken = AuthFeature.token
    * print "Token comes from Background" , UserToken

    Scenario: add experience
      Given url https://www.krafttechexlab.com/sw/api/v1/experience/add
      And header Authorization = UserToken
      And header Accept = 'application/json; charset=UTF-8'

      * request
      """
      {
  "job": "Junior  Developer In Test ",
  "company": "Kraft Technologieee",
  "location": "UK",
  "fromdate": "2012-12-21",
  "todate": "2013-12-26",
  "current": "false",
  "description": "Great job"
}
      """

      When method POST
      Then status 200
      * print response


      Given url 'https://www.krafttechexlab.com/sw/api/v1/experience/all'
      And header Authorization = UserToken
      And header Accept = 'application/json; charset=UTF-8'
      When method GET
      Then status 200
      * print response

   #   * def expectedInfo = read('classpath:data/userInfo.json')

    #  Then match response == expectedInfo

      * match response.experience.company == "Kraft Technologieee"