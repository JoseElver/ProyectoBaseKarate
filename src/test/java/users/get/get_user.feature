Feature: Get user on regres

  Scenario: Get an user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200

  Scenario: Get a list of users
    * def jsonResponse = read("list_of_users.json")
    Given url "https://reqres.in/api/users?page=1"
    When method get
    Then status 200
    And match $ == jsonResponse