Feature: Delete user on regres

  Scenario: Delete an user
    * call read("../post/post_user_snippet.feature@Create")
    Given url "https://reqres.in" + "/api/users/" + contactId
    When method delete
    Then status 204