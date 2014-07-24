Feature: Show employee list
 As a member of the site
 I wanna see members' profiles
 But I just edit my profile not others

   Scenario:Show employee list
     Given I am logged_in as a member
     When I see other profile
     Then I cannot edit other profile expect mine