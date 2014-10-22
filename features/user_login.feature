Feature: Login from the visitor page
  In order to login from visitor page
  Registered user
  Should login from the visitors page

Scenario: Registered user should login from the visitor page
  Given the user is on the visitor page
  Given the user is a registered user

  When the user enters email address
  
  And the user enters password
  And clicks on the "Sign in" button
   
  Then the user should see "Signed in successfully."
  
