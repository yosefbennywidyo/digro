Feature: Welcome page
  
Scenario: Viewing application's Welcome page
  When I am on the Welcome page
  Then There's a text titled "Welcome to Digro" with "Digital Room" subtitle
  And I should see the "Login" and "Signup" button