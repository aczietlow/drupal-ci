#!/bin/bash
set -e

path=$(dirname "$0")
base=$PWD/$path/..
drush="$base/bin/drush.php $drush_flags -y -r $base/www"

echo "Installing the Drupal."
$drush si standard --site-name="drupal-ci" --account-pass=admin -y