require 'mina/ftp'

# FTP Settings
set :ftp_path, '/dooma15phpbb.byethost15.com/htdocs/styles/bb3-theme'
set :ftp_from_path, './'
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
