Feature:Show forum
  As a member of the site
  I wanna see forum and comment
  I can see forum title and content

   Scenario:Show forum of my title and content
     Given I am signed_in as a member
     When I see forums,comments
     Then I can read titles,contents of forum 