@slow
Feature: As a user I want to login in the application
  
Scenario Outline: User login - success page
  Given User lands on homepage
  When User fills in <"username"> and <"password">  
  And User presses login
   Examples:
   |<"username">                  |<"password">    |
   |"u1"                        |"p1"  |

  
