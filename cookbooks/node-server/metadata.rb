name 'node-server'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures node-server'
long_description 'Installs/Configures node-server'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/node-server/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/node-server'
# name              'postgresql'
# maintainer        'Sous Chefs'
# maintainer_email  'help@sous-chefs.org'
# license           'Apache 2.0'
# description       'Installs and configures postgresql for clients or servers'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '6.1.1'
source_url        'https://github.com/sous-chefs/postgresql'
issues_url        'https://github.com/sous-chefs/postgresql/issues'
chef_version      '>= 12.1' if respond_to?(:chef_version)
recipe            'postgresql::default', 'Includes postgresql::client'
recipe            'postgresql::ruby', 'Installs pg gem for Ruby bindings'
recipe            'postgresql::client', 'Installs postgresql client package(s)'
recipe            'postgresql::server', 'Installs postgresql server packages, templates'

supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 7.0'
supports 'opensuse', '>= 13.0'
supports 'suse', '>= 12.0'

%w(fedora opensuseleap amazon).each do |os|
  supports os
end

%w(redhat centos scientific oracle).each do |el|
  supports el, '>= 6.0'
end

depends 'compat_resource', '>= 12.16.3'
depends 'build-essential', '>= 2.0.0'
depends 'openssl', '>= 4.0'