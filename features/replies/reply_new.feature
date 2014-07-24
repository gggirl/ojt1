Feature:New comment
As a member of the site
I wanna comment under the post
I can post under the other posts

  Scenario:New comment
    Given I am already signed_in 
    When I comment under the post of other member
    Then I will see my comment under the post 
  
  Scenario:New comment is typed nothing
    Given I am already signed_in 
    When I comment is typed nothing under the post of other member
    Then I cannot upload my text 

