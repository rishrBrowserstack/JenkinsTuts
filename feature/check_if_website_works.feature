Feature: Checking Basic URL and Saving Logs, Errors
  Background: Goto website
    Given i go to the home index
    Then verify home url
 



  @searchUrlAndTitle
  Scenario Outline: Verifying if the link works correctly
    Given I click on the link "<LinkText>"
    Then Title is "<Expected Title>" and Url is "<Expected URL>"


    Examples:
    | LinkText                                                         | Expected Title                                                   | Expected URL                                                  |
    | About                                                            | Automation Practice Site - About Us                              | http://127.0.0.1:5000/about                                   |
    | Contact                                                          | Automation Practice Site - Contact Us                            | http://127.0.0.1:5000/contact                                 |
    | Sample Data                                                      | Automation Practice Site - Sample Data                           | http://127.0.0.1:5000/data                                    |
    | 404 Test                                                         | Automation Practice Site - Page Not Found                        | http://127.0.0.1:5000/non-existent-page                       |
   

  @savingLogs
  Scenario: Save Logs,Errors in a File/ show them on Console
    Given I am on Home website
    Then Save the Logs  in a text File
    Then Show the Logs  in Console