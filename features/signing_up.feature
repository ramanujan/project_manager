Feature: Signing up
  Come utente non autenticato 
  Voglio poter essere in grado di resgistrarmi
  In modo da potermi autenticare presso l'applicazione .

Scenario: Signing up
  Given I am on the homepage
  When I follow "Sign up"
  And I fill in "Email" with "user@ticketee.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I press "Sign up"
  Then I should see "You have signed up successfully."
