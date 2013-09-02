current_dir = ENV["KNIFE_KEY_FOLDER"]
log_level                :info
log_location             STDOUT
node_name                ENV['OPSCODE_USER']
client_key               "#{current_dir}/#{ENV['OPSCODE_USER']}.pem"
validation_client_name   "#{ENV['OPSCODE_USER_PREFIX']}swoop-validator"
validation_key           "#{current_dir}/#{ENV['OPSCODE_USER_PREFIX']}swoop-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/#{ENV['OPSCODE_USER_PREFIX']}swoop"
cache_type               'BasicFile'
cache_options( :path => "#{current_dir}/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:aws_access_key_id]     = ENV["AWS_ACCESS_KEY_ID"]
knife[:aws_secret_access_key] = ENV["AWS_SECRET_ACCESS_KEY"]
knife[:aws_ssh_key_id]        = "ardrone"
knife[:flavor]                = "m1.large"
knife[:image]                 = "ami-6ffb9106"
knife[:availability_zone]     = "us-east-1b"
