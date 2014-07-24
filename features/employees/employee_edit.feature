Feature: Edit Employee
  As a member of the site
  I wanna edit my profile of employee
  After editing,want go to homepage

    Scenario:Editing my profile
       Given I am logged_in as a member
       When I have edited with valid data
       Then I already reach to homepage

    Scenario:Editing my profile with empty field
       Given I am logged_in as a member
       When I fill nothing
       Then I will see profile editing is unsuccessfully