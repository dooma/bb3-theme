require 'mina/bundler'
# require 'mina/rails'
require 'mina/git'
require 'mina/ftp'
# require 'mina/rbenv'  # for rbenv support. (http://rbenv.org)
# require 'mina/rvm'    # for rvm support. (http://rvm.io)

# Basic settings:
#   domain       - The hostname to SSH to.
#   deploy_to    - Path to deploy into.
#   repository   - Git repo to clone from. (needed by mina/git)
#   branch       - Branch name to deploy. (needed by mina/git)

# set :domain, 'foobar.com'
# set :deploy_to, '/var/www/foobar.com'
set :repository, 'git://github.com/dooma/bb3-theme'
set :branch, 'master'

# Manually create these paths in shared/ (eg: shared/config/database.yml) in your server.
# They will be linked in the 'deploy:link_shared_paths' step.
# set :shared_paths, ['config/database.yml', 'log']

# Optional settings:
#   set :user, 'foobar'    # Username in the server to SSH to.
#   set :port, '30000'     # SSH port number.

# FTP Settings
set :ftp_path, '/dooma15phpbb.byethost15.com/htdocs/styles/bb3-theme'
set :ftp_host, 'ftp.byethost15.com'
set :ftp_username, 'user@domain.com'
set :ftp_password, 'secret'

task :deploy do
  invoke :'ftp:deploy'
end


# For help in making your deploy script, see the Mina documentation:
#
#  - http://nadarei.co/mina
#  - http://nadarei.co/mina/tasks
#  - http://nadarei.co/mina/settings
#  - http://nadarei.co/mina/helpers

