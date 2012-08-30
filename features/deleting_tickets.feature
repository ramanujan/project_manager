Feature: Deleting tickets
  Come utente autorizzato
  Voglio poter essere in grado di cancellare un ticket
  In modo da non vederlo più associato ad un progetto

Scenario: "Deleting a ticket"

  Given there is a project with title "TextMate 2"
  And that project has a ticket:
    | title           | description                  |
    | Make it shiny!  | Gradients! Starburts! Oh My! |
  And I am on the homepage
  And I follow "Listing all projects"
  And I follow "TextMate 2"
  And I follow "Make it shiny!"
  When I follow "Delete Ticket"
  Then I should see "Ticket has been deleted"
  Then I should not see "Make it shiny!"

