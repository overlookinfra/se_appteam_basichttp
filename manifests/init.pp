# @summary This profile installs a sample website
class appteam_basichttp {

  case $facts['os']['family'] {
    'windows': { include appteam_basichttp::os::windows }
    'RedHat':  { include appteam_basichttp::os::rhel }
    default:   {
      fail('Unsupported kernel detected')
    }
  }

}
