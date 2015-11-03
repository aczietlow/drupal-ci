@api
Feature: Migrations
  As an editor of drupal-ci
  I want the workbench module enabled
  So that I can create custom editing work flows


  Scenario: Confirm the workbench module is installed
    Given the "workbench" module is installed

  Scenario: Administrators should have access to the workbench module
    Given I am logged in as a user with the administrator role
    When I go to "admin/workbench"
    Then I should get a 200 HTTP response