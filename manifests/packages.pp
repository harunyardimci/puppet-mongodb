class mongodb::packages inherits mongodb {

   $packages = [
	'mongodb-org',
   ]

   $version = '2.6.3-1'

    yumrepo { 'mongodb':
        descr		=> 'MongoDB Repository',
        baseurl		=> 'http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/',
        enabled		=> 1,
        gpgcheck	=> 0;
    }

    package { $packages:
        ensure => $version,
        require => Yumrepo['mongodb'],
    }
}
