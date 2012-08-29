Feature: Creating tickets
  Come utente autorizzato
  Voglio poter selezionare un progetto 
  Per creare dei tickets associati

Background:
  Given there is a project with title "TextMate 2"
  And I am on the homepage
  And I follow "Listing all projects"
  And I follow "TextMate 2"
  When I follow "New Ticket"
  And I fill in "Ticket title" with "Nested scopes"  

Scenario: Creating a ticket 
  And I fill in "Ticket description" with "allows users to create their own arbitrarily complex syntax high.."
  And I press "Create Ticket"
  Then I should see "Ticket <Nested scopes> was successfully created"

Scenario: Creating a ticket without a valid description
   And I fill in "Ticket description" with "abc"
   And I press "Create Ticket"
   Then I should see "Description is too short"

Scenario: Creating a ticket with a blank title
   And I fill in "Ticket title" with " " 
   And I fill in "Ticket description" with "allows users to create their own arbitrarily complex syntax high.."
   And I press "Create Ticket"
   Then I should see "Title can't be blank"

  

