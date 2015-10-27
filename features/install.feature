@api
Feature: Homepage.
  As a modern developer,
  I want to see drupal compiled,
  so that I can develop all the things.

  Scenario: I can load the drupal site
    When I am on the homepage
    Then I should see the text "drupal-ci"