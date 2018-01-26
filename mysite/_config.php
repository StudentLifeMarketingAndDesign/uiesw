<?php

global $project;
$project = 'mysite';

global $database;
$database = 'usgbc';
 
// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");

// Set the site locale
i18n::set_locale('en_US');

if(Director::isLive()) {
	Director::forceSSL(array('/^Security/','/^admin/'));
}
Authenticator::unregister('MemberAuthenticator');
Authenticator::set_default_authenticator('SAMLAuthenticator');
