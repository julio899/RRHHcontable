<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database type. ie: mysql.  Currently supported:
				 mysql, mysqli, postgre, odbc, mssql, sqlite, oci8
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Active Record class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['autoinit'] Whether or not to automatically initialize the database.
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $active_record variables lets you determine whether or not to load
| the active record class
*/

$active_group = 'default';
$active_record = TRUE;

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'root';
$db['default']['password'] = 'vinachi89';
$db['default']['database'] = 'rrhh';
$db['default']['dbdriver'] = 'mysql';
$db['default']['dbprefix'] = '';
$db['default']['pconnect'] = TRUE;
$db['default']['db_debug'] = TRUE;
$db['default']['cache_on'] = FALSE;
$db['default']['cachedir'] = '';
$db['default']['char_set'] = 'utf8';
$db['default']['dbcollat'] = 'utf8_general_ci';
$db['default']['swap_pre'] = '';
$db['default']['autoinit'] = TRUE;
$db['default']['stricton'] = FALSE;

/*Dideco*/

$db['dideco']['hostname'] = 'localhost';
$db['dideco']['username'] = 'root';
$db['dideco']['password'] = 'vinachi89';
$db['dideco']['database'] = 'dideco';
$db['dideco']['dbdriver'] = 'mysql';
$db['dideco']['dbprefix'] = '';
$db['dideco']['pconnect'] = TRUE;
$db['dideco']['db_debug'] = TRUE;
$db['dideco']['cache_on'] = FALSE;
$db['dideco']['cachedir'] = '';
$db['dideco']['char_set'] = 'utf8';
$db['dideco']['dbcollat'] = 'utf8_general_ci';
$db['dideco']['swap_pre'] = '';
$db['dideco']['autoinit'] = TRUE;
$db['dideco']['stricton'] = FALSE;

# Compacto

$db['compacto']['hostname'] = 'localhost';
$db['compacto']['username'] = 'root';
$db['compacto']['password'] = 'vinachi89';
$db['compacto']['database'] = 'compacto';
$db['compacto']['dbdriver'] = 'mysql';
$db['compacto']['dbprefix'] = '';
$db['compacto']['pconnect'] = TRUE;
$db['compacto']['db_debug'] = TRUE;
$db['compacto']['cache_on'] = FALSE;
$db['compacto']['cachedir'] = '';
$db['compacto']['char_set'] = 'utf8';
$db['compacto']['dbcollat'] = 'utf8_general_ci';
$db['compacto']['swap_pre'] = '';
$db['compacto']['autoinit'] = TRUE;
$db['compacto']['stricton'] = FALSE;

# Compacto LARA

$db['compactolara']['hostname'] = 'localhost';
$db['compactolara']['username'] = 'root';
$db['compactolara']['password'] = 'vinachi89';
$db['compactolara']['database'] = 'compactolara';
$db['compactolara']['dbdriver'] = 'mysql';
$db['compactolara']['dbprefix'] = '';
$db['compactolara']['pconnect'] = TRUE;
$db['compactolara']['db_debug'] = TRUE;
$db['compactolara']['cache_on'] = FALSE;
$db['compactolara']['cachedir'] = '';
$db['compactolara']['char_set'] = 'utf8';
$db['compactolara']['dbcollat'] = 'utf8_general_ci';
$db['compactolara']['swap_pre'] = '';
$db['compactolara']['autoinit'] = TRUE;
$db['compactolara']['stricton'] = FALSE;

# Deimport

$db['deimport']['hostname'] = 'localhost';
$db['deimport']['username'] = 'root';
$db['deimport']['password'] = 'vinachi89';
$db['deimport']['database'] = 'deimport';
$db['deimport']['dbdriver'] = 'mysql';
$db['deimport']['dbprefix'] = '';
$db['deimport']['pconnect'] = TRUE;
$db['deimport']['db_debug'] = TRUE;
$db['deimport']['cache_on'] = FALSE;
$db['deimport']['cachedir'] = '';
$db['deimport']['char_set'] = 'utf8';
$db['deimport']['dbcollat'] = 'utf8_general_ci';
$db['deimport']['swap_pre'] = '';
$db['deimport']['autoinit'] = TRUE;
$db['deimport']['stricton'] = FALSE;

# Deimport LARA

$db['deimportlara']['hostname'] = 'localhost';
$db['deimportlara']['username'] = 'root';
$db['deimportlara']['password'] = 'vinachi89';
$db['deimportlara']['database'] = 'deimportlara';
$db['deimportlara']['dbdriver'] = 'mysql';
$db['deimportlara']['dbprefix'] = '';
$db['deimportlara']['pconnect'] = TRUE;
$db['deimportlara']['db_debug'] = TRUE;
$db['deimportlara']['cache_on'] = FALSE;
$db['deimportlara']['cachedir'] = '';
$db['deimportlara']['char_set'] = 'utf8';
$db['deimportlara']['dbcollat'] = 'utf8_general_ci';
$db['deimportlara']['swap_pre'] = '';
$db['deimportlara']['autoinit'] = TRUE;
$db['deimportlara']['stricton'] = FALSE;


# transdevi 

$db['transdevi']['hostname'] = 'localhost';
$db['transdevi']['username'] = 'root';
$db['transdevi']['password'] = 'vinachi89';
$db['transdevi']['database'] = 'transdevi';
$db['transdevi']['dbdriver'] = 'mysql';
$db['transdevi']['dbprefix'] = '';
$db['transdevi']['pconnect'] = TRUE;
$db['transdevi']['db_debug'] = TRUE;
$db['transdevi']['cache_on'] = FALSE;
$db['transdevi']['cachedir'] = '';
$db['transdevi']['char_set'] = 'utf8';
$db['transdevi']['dbcollat'] = 'utf8_general_ci';
$db['transdevi']['swap_pre'] = '';
$db['transdevi']['autoinit'] = TRUE;
$db['transdevi']['stricton'] = FALSE;


/* End of file database.php */
/* Location: ./application/config/database.php */