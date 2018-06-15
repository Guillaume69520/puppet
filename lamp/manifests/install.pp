class lamp::install {

case $::osfamily {

'Debian':{

package { $lamp::params::lamp_sql_package_name:

        ensure => present,
}

}

'redhat':{

package { $lamp::params::lamp_sql_package_name:

        ensure => present,
      

}

}
}	

}
