Feature: employee register
  I wanna be a member of the site
  I go to sign up page
  I sign up as a member with valid data

    Scenario:Employee register
    Given I sign up with valid data
    When I have signed up
    Then I reach to homepage
     
    Scenario:Employee register with invalid data
    Given I sign up with invalid data
    When I sign up
    Then I will see error message

    Scenario:Employee register of password mismatch
    Given I sign up password field differ with password_confirmation field
    When I sign up
    Then I will see mismatching message
     
    Scenario:Employee register with empty field
    Given I sign up with empty field
    When I sign up
    Then I will see a message
     
    Scenario:Employee register for number only fields
    Given I sign up userid field,age field,ph field,travelfee field with letters
    When I sign up
    Then I will see warning message
     
    Scenario:Employee register with invalid username
    Given I sign up username field with numbers only
    When I sign up
    Then I will see invalid username message
     
    Scenario:Employee register with invalid email
    Given I sign up email field with invalid format
    When I sign up
    Then I will see email format error message
     
    



