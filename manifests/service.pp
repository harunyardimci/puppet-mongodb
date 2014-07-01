class mongodb::service inherits mongodb {

    require mongodb::packages

    $services = [ 'mongod' ]
    
    service { $services:
	ensure => running,
	enable => true,
    }

    exec { "mongod add and up chkconfig":
        path    => "/bin:/usr/bin:/sbin:/usr/sbin",
        command => "chkconfig --add mongod \
        && chkconfig mongod off \
        && chkconfig --level 3 mongod on",
        require => [
		Class["mongodb::packages"],
		Class["mongodb::config"],
	],
        unless  => [ "chkconfig --list | grep 'mongod.*0:off.1:off.2:off.3:on.4:off.5:off.6:off'" ],
    }

}
