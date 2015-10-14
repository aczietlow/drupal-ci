# Drupal CI

Drupal ci is an example of my opinion of what a developer workflow with Drupal should be.

## Dependencies

Let's deal with the elephant in the room. Drupal 7 isn't great and handling dependencies.

We'll be using composer handle our dependencies (including drupal). Fortunately there's been a great amount of work put 
towards supporting drupal in a composer workflow. 

`packagist.drupal-composer.org` 

A parser scans d.o. for project information and makes them available via composer. See https://www.drupal.org/node/1886820
for more information.