Feature: Creating projects
  Come utente amministratore
  Voglio poter creare dei progetti tramite una comoda interfaccia 
  In modo che gli utenti autorizzati possano creare tickets sui progetti

Background:
  Given I am on the homepage
  When I follow "New Project"

Scenario: Creating a project in a normal way
  
  And I fill in "Project title" with "TextMate 2"
  And I fill in "Project description" with "Very cool editor"
  And I press "Create Project"
  Then I should see "Project TextMate 2 was successfully created"
  And I should see "Very cool editor"

Scenario: Creating a project without title
  
  And I fill in "Project description" with "Very cool editor"
  And I press "Create Project"
  Then I should see "Title can't be blank"
  
Scenario: Creating a project without description
  And I fill in "Project title" with "TextMate 2"
  And I press "Create Project"
  Then I should see "Description can't be blank"
  