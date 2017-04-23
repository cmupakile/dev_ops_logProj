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
# opscode cookbooks
# depends 'apt'
# depends 'build-essential'
depends 'nodejs', '~> 3.0.0'
depends 'git', '~> 6.0.0'
# depends 'ruby_build', '1.1.0'
depends 'bjn_ruby', '~> 2.2.3'
depends 'magic_shell'
