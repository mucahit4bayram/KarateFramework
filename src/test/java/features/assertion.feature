

Feature: using match keyword

  @wip
  Scenario: matching
    * def name = 'Robert Albert'
    * match name == 'Robert Albert'
 #   Assert.assertEquals(name, "Robert Albert")
    * match name != 'Hans'


    Scenario: Fuzzy Matching

      * def user =
       """
         {
  "name": "aFm",
  "email": "dev@krafttechexlab.com",
  "password": "123467",
  "about": "About Me",
  "terms": 10,
  "position": true
}

          """
      * match user.name == '#string'
      * match user.terms == '#number'
      * match user.position == '#boolean'
      * match user.country == '#notpresent'
    # name için baktık string mi?
    # terms için baktık number mi?
    # position için baktık true mi?
    # country için baktık yok mu diye. YOK


    Scenario: Contains Matching

      * def users =

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
      * def length = users.length
      * print length
      * print users
      * match users contains { "name": "Mustafa", "role": "member", "age": "25" }
      #  match deki kısım bu arryin içerisinde var mı yok mu?
