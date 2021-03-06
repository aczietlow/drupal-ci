#!/bin/bash
set -e

path=$(dirname "$0")
base=$PWD/$path/..

# Pass all arguments to drush. Ripped from https://github.com/craychee/drupal-adonis/blob/master/build/drush-build.sh
# kudos!
drush_flags='-y'
while [ $# -gt 0 ]; do
  drush_flags="$drush_flags $1"
  shift
done

drush="$base/bin/drush.php $drush_flags"

pushd $base/www
echo "Installing the Drupal."
$drush si standard --site-name="drupal-ci" --account-pass=admin -y