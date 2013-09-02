require "bundler/setup"

task :default => [:list]

desc "Runs knife cookbook test against all cookbooks."
task :knife_test do
    sh "bundle exec knife cookbook test -a"
end

desc "Runs foodcritic against all cookbooks."
task :foodcritic do
    sh "bundle exec foodcritic -f any cookbooks"
end

desc "Checks cookbook syntax" 
task :static_analysis do
    Rake::Task[:knife_test].execute
    Rake::Task[:foodcritic].execute
end

desc "List all the tasks."
task :list do
    puts "Tasks: \n- #{(Rake::Task.tasks).join("\n- ")}"
end

desc "Runs chefspec on all cookbooks."
task :chefspec do
    sh "bundle exec rspec cookbooks"
end

desc "Creates a new cookbook."
task :new_cookbook, :name do |t, args|
    sh "bundle exec knife cookbook create #{args.name}"
    sh "bundle exec knife cookbook create_specs #{args.name}"
end

desc "Checks for required dependencies."
task :check do
    #Checking environment settings
    missing_keys = [
      "OPSCODE_USER",
      "OPSCODE_ORGNAME",
      "KNIFE_CLIENT_KEY_FOLDER",
      "KNIFE_VALIDATION_KEY_FOLDER",
      "KNIFE_CHEF_SERVER"
    ] - ENV.keys
    
    if missing_keys.any?
        puts "missing environment settings"
        puts missing_keys.join("\n")
        exit
    else
        puts "all set"
    end
end

desc "Builds the package."
task :build do 
    puts "Nothing..."
end

desc "Files up the Vagrant box."
task :start do
    puts "Nothing..."
end
