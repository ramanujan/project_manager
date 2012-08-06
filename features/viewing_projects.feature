Feature: Viewing projects
  Come utente 
  Voglio essere in grado di visualizzare una lista di progetti disponibili
  In modo da poter assegnare dei ticket ad un progetto, cui sono stato autorizzato

Background:
  Given there is a project with title "TextMate 2" 
  And I am on the homepage
  When I follow "Listing all projects"

Scenario: Listing all projects
  Then I should see "TextMate 2" within "a"
  
Scenario: Listing all projects and view one 
  And I follow "TextMate 2"
  Then I should see "Very useful editor"
  And I should see "TextMate 2" 
   