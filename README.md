# invetoryEnvironment
dev and test environment for Inventory

# Log Proj Environment
 -environment for profile app --chef		 +
 +Environment used for running the Digital Profiles application.
 +
 +* Node sverver Ubuntu trusty 64
 +* Vagrant (Mongo) database is included
 +
 +## Getting Started
 +
 +These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.
 +
 +### Prerequisites
 +
 +What things you need to install the software and how to install them
 +
 +```
 +Give examples
 +```
 +
 +### Installing
 +
 +A step by step series of examples that tell you have to get a development env running
 +
 +Say what the step will be
 +
 +```
 + clone environment repository:  git@github.com:cmupakile/dev_ops_logProj.git
   vagrant up

   cd ~/app
   git pull
   rbenv rehash
   gem install bundler
   rbenv rehash
   rails s
 +```
 +
 +```
 +until finished
 +```
 +
 +End with an example of getting some data out of the system or using it for a little demo
 +
 +## Running the tests
 +
 +Explain how to run the automated tests for this system:
 +
 +The environment comes with readied automated testing that uses chefspec
 + which runs the necessary unit tests on the evironment.
 +
 +The environment comes with readied automated testing that uses serverspec
 + which runs the necessary integration tests on the environment.
 +
 +
 +### Break down into end to end tests
 +
 +Explain what these tests test and why
 +
 +Check to see if server software is installed in the environment:
 +describe package('nginx') do
 +   it { should be_installed }
 + end
 +
 +Check to see if server software is actually running within the environment:
 + describe service("nginx") do
 +   it { should be_running }
 +   it { should be_enabled}
 + end
 +
 +
 + describe port(80) do
 +   it { should be_listening }
 + end
 +
 + describe command('node -v') do
 +   its(:stdout) { should match /6\.10\.0/ }
 + end
 +
 + describe command('git --version') do
 +   its(:stdout) { should match /2\.7\.4/ }
 + end
 +
 + describe command('ruby --version') do
 +   its(:stdout) { should match /2\.3\.1/}
 + end
 +```
 +Give an example
 +```
 +
 +### And coding style tests
 +
 +Explain what these tests test and why
 +
 +```
 +Give an example
 +```
 +
 +## Deployment
 +
 +Add additional notes about how to deploy this on a live system:
 +
 +The deploy function is NOT automated. Any environment that has code
 +which passes UAT testing sends a notification to that it needs to be
 +reviewed and deployed to the live production environment manually.
 +
 +## Built With
 +
 +Vagrant
 +Jenkins
 +Chef
 +NGINX
 +AWS
 +Postgre 9.3
 +Ubuntu 16.04
 +
 +*
 +*
 +*
 +
 +## Contributing
 +
 +Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.
 +
 +## Versioning
 +
 +We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).
 +
 +## Authors
 +
 +**
 +
 +See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.
 +
 +## License
 +
 +This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
 +
 +## Acknowledgments
 +
 +* Hat tip to anyone who's code was used
 +* Inspiration
 +* etc
