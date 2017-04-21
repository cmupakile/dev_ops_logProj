require 'minitest/autorun'

describe_recipe 'default' do
  it 'has installed Ruby 2.2' do
    assert `ruby --version` =~ /^ruby 2\.2\./
    assert $?.exitstatus.zero?
  end

  it 'has installed Bundler' do
    assert `bundler --version` =~ /version/
    assert $?.exitstatus.zero?
  end
end