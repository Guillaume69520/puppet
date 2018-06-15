class lamp::params{



case $::osfamily {

'Debian':{

$lamp_sql_package_name= 'mysql-server'
$lamp_sql_service_name= 'mysql'
$lamp_php_package_name= 'php'
$lamp_php_service_name= 'php7.0-fpm'

}


'redhat':{

$lamp_sql_package_name= 'mysql-server'
$lamp_sql_service_name= 'mysqld'
$lamp_php_package_name= 'php'
$lamp_php_service_name= 'php'


}

default:{

fail("This manifest does not support ${::osfamily} Linux flavour")}

}

}
