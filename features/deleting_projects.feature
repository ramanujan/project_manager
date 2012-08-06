Feature: Deleting projects
  Come utente amministratore
  Voglio poter essere in grado di eliminare un progetto tramite un controllo
  In modo che il progetto venga cancellato definitivamente dall'applicazione

Scenario: Deleting a project 
  Given there is a project with title "TextMate 2"
  And I am on the homepage
  And I follow "Listing all projects"
  And I follow "TextMate 2"
  When I follow "Delete Project"
  Then I should see "Project TextMate 2 was successfully deleted"
  And I should not see "TextMate 2" within "a"
  
