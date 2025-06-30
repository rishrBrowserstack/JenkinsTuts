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
    | Big page with many elements                                      | Complicated Page - Ultimate QA                                   | https://ultimateqa.com/complicated-page                       |
    | Fake Landing Page                                                | Fake landing page - Ultimate QA                                  | https://ultimateqa.com/fake-landing-page                      |
    | Fake Pricing Page                                                | Fake pricing page - Ultimate QA                                  | https://ultimateqa.com/automation/fake-pricing-page/          |
    | Fill out forms                                                   | Filling Out Forms - Ultimate QA                                  | https://ultimateqa.com/filling-out-forms/                     |
    | Learn how to automate an application that evolves over time      | Sample Application Lifecycle - Sprint 1 - Ultimate QA            | https://ultimateqa.com/sample-application-lifecycle-sprint-1/ |
    | Login automation                                                 | Sign In - UltimateQA                                             | https://courses.ultimateqa.com/users/sign_in                  |
    | Interactions with simple elements                                | Simple HTML Elements For Automation - Ultimate QA                | https://ultimateqa.com/simple-html-elements-for-automation/   |


  @savingLogs
  Scenario: Save Logs,Errors in a File/ show them on Console
    Given I am on Home website
    Then Save the Logs  in a text File
    Then Show the Logs  in Console