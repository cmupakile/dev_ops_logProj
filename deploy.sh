#pull down new code

cd ~/dev_ops_logProj
git pull
berks vendor cookbooks
sudo chef-client --local-mode --runlist 'recipe[rails-server]'


cd ~/app
git pull
rbenv rehash
gem install bundler
rbenv rehash

rails s
