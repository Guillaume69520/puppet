node 'vbox-essir' {

	$sshd_port = 23
	$sshd_protocol = 2
	$apache_port = 80 
	include sshd
	include munin
}
