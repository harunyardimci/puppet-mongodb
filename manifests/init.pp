class mongodb (
   $type = $mongodb::params::type,
   $port = $mongodb::params::port,
   $fork = $mongodb::params::fork,
   $dbpath = $mongodb::params::dbpath,
   $logpath = $mongodb::params::logpath,
   $logappend = $mongodb::params::logappend,
   $service_name = $mongodb::params::service_name,
   $auth = $mongodb::params::auth,
   $conf_file = $mongodb::params::conf_file,
   $key_file = $mongodb::params::key_file,
   $init_file = $mongodb::params::init_file,
   $mongos = $mongodb::params::mongos,
   $configdb = $mongodb::params::configdb
) inherits mongodb::params {

    include mongodb::packages
    include mongodb::config
    include mongodb::service
}
