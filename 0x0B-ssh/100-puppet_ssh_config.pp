# 100-puppet_ssh_config.pp

file { '/home/ubuntu/.ssh/config': # Update "your_username" with your actual username
  ensure => present,
  owner  => 'ubuntu',              # Update "your_username" with your actual username
  group  => 'ubuntu',              # Update "your_username" with your actual username
  mode   => '0600',                        # Set permissions to 0600
  content => "
Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  ",
}

