class mongodb::config inherits mongodb {

    require mongodb::packages

    user { 'mongod':
      ensure     => present,
      managehome => true,
    }

    file { $logpath:
	ensure => present,
	mode   => 0640,
        owner  => mongod,
        group  => mongod,
    }

    file { $dbpath:
        ensure => directory,
        mode   => 0755,
        owner  => mongod,
        group  => mongod,
    }

    file { $init_file:
	ensure => present,
	content => template('mongodb/mongodb.init.erb')
    }

    file { $conf_file:
    	ensure => present,
    	content => template('mongodb/mongodb.conf.erb')
    }
}
