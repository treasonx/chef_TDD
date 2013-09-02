#The Chef Workflow 


For quick testing and cookbook development, [Vagrant](http://www.vagrantup.com/)
is recommended. Vagrant is not required, you will be able to use ec2 for
development and testing, but your workflow will be much slower!

It is also recommended to have VMWare installed with the VMWare vagrant
provider. But you can get a lot done with just a vanilla vagrant installation.
Again VMWare will be a much better development process for cookbook development. 

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



