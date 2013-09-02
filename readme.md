#The Chef Workflow 


For quick testing and cookbook development, [Vagrant](http://www.vagrantup.com/)
is recommended. Vagrant is not required, you will be able to use ec2 for
development and testing, but your workflow will be much slower!

It is also recommended to have VMWare installed with the VMWare vagrant
provider. But you can get a lot done with just a vanilla vagrant installation.
Again VMWare will be a much better development process for cookbook development. 

Environment setup. 

  * install [virtual box](https://www.virtualbox.org/wiki/Downloads)
  * install [vagrant](http://docs.vagrantup.com/v2/getting-started/index.html)
  * install [ec2 vagrant provider](https://github.com/mitchellh/vagrant-aws)
  * clone repo and run `bundle install`

##Workflow goals
  
  * syntax checking
  * rspec testing
  * collaborative development

###Syntax Checking

Syntax is validated in two steps. The first step is using the built in
validation from knife. This is the same validation that happens before the
cookbook is uploaded using knife. 

The second step uses [foodcritic](http://acrmp.github.io/foodcritic/) to validate the syntax of the recipe based on
linting rules defined in the foodcritic static analysis tool. 

###Unit Testing

Unit testing is done using [chefspec](https://github.com/acrmp/chefspec).
Chefspec mocks a lot of the Chef client api which you can then make assertions
against. This is no replacement for running the specs on a node. But it does
give you quick feedback during the development of your chef recipes. You can run
your chefspecs using `rake chefspec`.

###Integration Test (Quick)

Running your recipes against a live server is the best test to make sure things
are working properly. I recommend using the default Vagrant virtual box
provider. The Vagrant file is configured to automatically run your tests once
the vagrant machine is running. Run `vagrant up` to run your integration tests
and see the output. 

###Integration Test (Full, Slow)

To be 100% certain that your recipes will run in production it is recommended to
run them against an actual ec2 instance running in the VPC. In order to run this
test you must connect to the VPC using tunnelblick. Once connected you can run
the command `vagrant up --provider=aws`. This will boot a machine in the VPC and
run your specs against that instance. This process is the slowest form of
testing but provides a real production environment to run against. 



