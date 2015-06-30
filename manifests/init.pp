# Puppet management
class puppet_service {
   package {'puppet':
      ensure => installed,
   }
}
