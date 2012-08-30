Feature: Editing tickets
  Come utente autorizzato
  Voglio poter essere in grado di editare i dati riguardanti un ticket
  In modo da poterne modificare le caratteristiche

Background:
  Given there is a project with title "TextMate 2"
  And that project has a ticket:
    | title           | description                  |
    | Make it shiny!  | Gradients! Starburts! Oh My! |
  And I am on the homepage

Scenario: Editing a ticket 
  And I follow "Listing all projects"
  And I follow "TextMate 2"
  And I follow "Make it shiny!"
  When I follow "Edit Ticket"
  And I fill in "Ticket title" with "Make it very shiny!"
  And I press "Update Ticket"
  Then I should see "Ticket has been updated"
  And I should see "Make it very shiny!" within ".ticket_heading"
  But I should not see "Make it shiny!"

