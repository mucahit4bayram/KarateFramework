
Feature: welcome to karate

  Scenario: how to print
    Given print "Hello Karate World"
    When print 'another file print'
  #   virgul iki string birleştirirken araya bir boşluk ( space ) sağlar
    * print 'my name is' + 'Hasan'


    Scenario: Variables
      * def name = 'Robert'
      * print 'My name is', name
      * def age = 19
      * print name, 'is', age, 'years'
      * print 5+5


      Scenario: Difficult parameters
        * def user = {"name" : "Hasan", "role" : "admin"}
        * print user
        * print user.name
        * print user.role


        Scenario: Json body
          * def user =
          """
          {"name" : "Hasan",
          "role" : "admin",
          "age" : "24"}

          """
          * print user
          * print user.age


          Scenario: json body with Array objects
            Given def user =
            """
            [

            {"name" : "Hasan",
             "role" : "admin",
             "age" : "24"},

             {"name" : "Mustafa",
              "role" : "member",
              "age" : "25"}

            ]
            """
            * print user[0]
            * print user[1].role

