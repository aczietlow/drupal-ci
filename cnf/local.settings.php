<?php
$db_url = 'mysql://default:default@localhost/default';
$databases = array(
  'default' => array(
    'default' => array(
      'database' => 'default',
      'username' => 'default',
      'password' => 'default',
      'driver' => 'mysql',
      'host' => 'localhost',
    ),
  ),
);

require_once DRUPAL_ROOT . '/sites/default/vendor/autoload.php';