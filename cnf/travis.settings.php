<?php
$databases = array(
  'default' => array(
    'default' => array(
      'database' => 'drupalci',
      'username' => 'travis',
      'password' => '',
      'driver' => 'mysql',
      'host' => 'localhost',
    ),
  ),
);

require_once DRUPAL_ROOT . '/sites/default/vendor/autoload.php';
