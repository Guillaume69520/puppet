class lamp::params{



case $::osfamily {

'Debian':{

$lamp_sql_package_name= 'mysql-server'
$lamp_sql_service_name= 'mysql'

}


'redhat':{

$lamp_sql_package_name= 'mysql-server'
$lamp_sql_service_name= 'mysql'


}

default:{

fail("This manifest does not support ${::osfamily} Linux flavour")}

}

}
