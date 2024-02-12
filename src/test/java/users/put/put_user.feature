Feature: Put user on regres

  Scenario: Put an user
    Given url "https://reqres.in" + "/api/users/" + "2"
    And request { "name": "Jose", "job": "programmer" }
    When method put
    Then status 200
    And match $.name == 'Jose'