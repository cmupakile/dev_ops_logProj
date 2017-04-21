# Control which version of Ruby gets installed and configured
default['ruby']['version'] = '2.2'

# We assume compatibility with the BrightBox distribution of Ruby
default['ruby']['repo'] = {
  'name' => 'ruby-ng',
  'uri' => 'http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu',
  'distribution' => node['lsb']['codename'],
  'components' => %w[ main ],
  'keyserver' => 'keyserver.ubuntu.com',
  'key' => 'C3173AA6'
}

# Remove any pesky old Rubies lying around
default['ruby']['removes'] = {
  # 'ruby1.9.1' => {},
  # 'ruby1.9.1-dev' => {},
  # 'ruby1.9.3' => {},
  # 'libruby1.9' => {},
  # 'ruby2.1' => {},
  # 'ruby2.1-dev' => {},
  # 'libruby2.1' => {}
}

# Declare any prerequisites for common RubyGems
default['ruby']['installs'] = {
  'libcurl4-gnutls-dev' => {},
  'libxslt-dev' => {},
  'libxml2-dev' => {},
  'make' => {},
  'gcc' => {},
  'build-essential' => {}
}

# Declare essential RubyGems
default['ruby']['gems'] = {
  'bundler' => {}
}

# Configure RubyGems system-wide
default['ruby']['gemrc'] = {
  'gem' => '--no-document'
}