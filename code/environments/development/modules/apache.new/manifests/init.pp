class apache {
	package{'httpd':}

	file {'/var/www/html/index.html':
		ensure => present,
		content => "<html><body><h1>hello world - this is automation</h1></body></html>"
	}

	service {'httpd':
		ensure => running,
		enable => true,
		require => Package['httpd']
	}
}
