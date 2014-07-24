Feature:New forum
As a member of the site
I wanna post in forum
I can post successfully

  Scenario:New forum
  Given I am signed_in as a member
  When I post title,content
  Then I can edit my post

  Scenario:New forum with empty field
  Given I am signed_in as a member
  When I post title,content to fill anything
  Then I will see forum error message
