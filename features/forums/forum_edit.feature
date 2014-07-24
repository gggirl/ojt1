Feature:Edit forum
 As a member of the site
 I wanna edit my post in the forum
 I can edit my post successfullay

   Scenario:Edit forum
     Given I am signed_in as a member
     When I have edited
     Then I will see message

   Scenario:Edit forum with empty field
     Given I am signed_in as a member
     When I have edited with blank field
     Then I will see unsuccessfully message