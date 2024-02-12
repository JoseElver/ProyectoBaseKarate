Feature: Post user on regres

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "name": "#(name)", "job": "#(job)" }

  Scenario Outline: Post an user
    When method post
    Then status 201

    Examples:
      | name  | job        |
      | Alexa | Stylist    |
      | Jose  | QA         |
      | Luis  | Programmer |

  Scenario: Post an user without job
    Given request { "name": "morpheus" }
    When method post
    Then status 201

  Scenario: Post an user with name invalid
    Given request { "name": "#$%%#_/", "job": "leader" }
    When method post
    Then status 201