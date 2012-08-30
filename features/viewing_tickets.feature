Feature: Viewing tickets
  Come utente autorizzato
  Voglio poter visualizzare i tickets associati ad un progetto
  Per poterli gestire 

Background: 
  Given there is a project with title "TextMate 2"
  And that project has a ticket:
    | title           | description                  |
    | Make it shiny!  | Gradients! Starburts! Oh My! |
  And there is a project with title "Internet Explorer"
  And that project has a ticket:
    | title                | description             |
    | Standard compliance  | Isn't a joke!           |
  And I am on the homepage
  
Scenario: Viewing ticket for a given project
  When I follow "Listing all projects"
  And I follow "TextMate 2"
  And I follow "Make it shiny!"
  And I should see "Gradients! Starburts! Oh My!"