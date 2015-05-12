set :application, "symfony-standard"
set :domain,      "62.4.19.85"
set :deploy_to,   "/home/ubuntu/www/symfony-standard"
set :repository,  "https://github.com/gagnadref/#{application}.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

# set :model_manager, "doctrine"
# Or: `propel`

set :user, "ubuntu"
role :web, "62.4.19.85"       # Your HTTP server, Apache/etc
role :app, "62.4.19.85"       # This may be the same as your `Web` server

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL

# set :ssh_options, { 
#   forward_agent: true, 
#   paranoid: true, 
#   keys: "~/.ssh/id_rsa" 
# }

ssh_options[:keys] = ["/home/cloud-floriang.pem","/home/.ssh/id_rsa"]
ssh_options[:forward_agent] = true
