class mongodb::params {

    $service_type  = 'standalone'
    $port = 27017
    $fork = true
    $dbpath = '/mnt/data'
    $logappend = true
    $auth = false
    $key_file = '/mnt/data/mongokey'
    $mongos = false
    $bind_ip = '127.0.0.1'

    case $service_type {
	'standalone': {
		$type = 'mongod'
		$service_name = "${type}"
		$logpath = "/var/log/mongodb/${type}.log"
		$conf_file = "/etc/${type}.conf"
    		$init_file = "/etc/init.d/${type}"
	}
	'replicaset': {
		
	}
	'mongos': {

	}
    }
}
