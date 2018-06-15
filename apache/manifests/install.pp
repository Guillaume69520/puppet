class apache::install {

package { $apache::params::apache_package_name:
          
	ensure => present,
	before => File['/etc/apache2/ports.conf'],

}
file { '/etc/apache2/ports.conf':
	ensure => file,
	mode => '0600',
	content=>template("/etc/puppet/modules/apache/template/ports.erb"),
}	

}
