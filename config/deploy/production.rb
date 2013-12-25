set :stage, :production
set :rails_env, :production

server '192.241.188.190', user: 'deploy', roles: %w{web app db}
