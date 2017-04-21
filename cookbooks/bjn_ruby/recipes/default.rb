#
# Cookbook Name:: bjn_ruby
# Recipe:: default
#

ruby = materialize node['ruby']
version = ruby['version']

# Exposing these attributes
node.set['ruby']['ruby_bin'] = '/usr/bin/ruby%s' % version
node.set['ruby']['gems_dir'] = '/var/lib/gems/%s.0' % version
node.set['languages']['ruby']['ruby_bin'] = '/usr/bin/ruby%s' % version
node.set['languages']['ruby']['gems_dir'] = '/var/lib/gems/%s.0' % version

# Contains stable builds for Ruby
reify :apt_repository, ruby['repo']

# Remove old packages
reify_each :package, ruby['removes'], [], :remove

# Install common dependencies
reify_each :package, ruby['installs']

# Install Ruby as required
package 'ruby%s' % version
package 'ruby%s-dev' % version
execute 'update-alternatives --set ruby /usr/bin/ruby%s' % version
execute 'update-alternatives --set gem  /usr/bin/gem%s' % version

# Configure RubyGems
file '/etc/gemrc' do
  content yaml_config(ruby['gemrc'])
end

# Install essential RubyGems
reify_each :gem_package, ruby['gems']
