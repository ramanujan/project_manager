Feature: Editing projects
  Come utente amministratore
  Voglio poter essere in grado di editare gli attributi di un progetto
  In modo da poterne modificare le caratteristiche

Scenario: Updating a project
  Given there is a project with title "TextMate 2"
  And I am on the homepage
  And I follow "Listing all projects"
  When I follow "TextMate 2"
  And I follow "Edit Project"
  And I fill in "Project title" with "TextMate 2 beta"
  And I press "Update Project"
  Then I should see "Project TextMate 2 was successfully updated"
  And I should see "Very useful editor"
  And I should see "TextMate 2 beta"
