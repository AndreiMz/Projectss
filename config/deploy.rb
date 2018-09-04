# config valid for current version and patch releases of Capistrano
lock '~> 3.11.0'

set :application, 'YouMimic'
set :repo_url, 'https://github.com/AndreiMz/YouMimic'
set :deploy_to, '/home/ubuntu/YouMimic'
set :use_sudo, true
set :branch, 'master'
set :rbenv_type, :user

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w[rake gem bundle ruby rails]

SSHKit.config.command_map[:bundle] = '/home/ubuntu/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/bundler-1.16.3/exe/bundle'
set :default_env, path: [fetch(:ruby_version), "#{release_path}/bin", '$PATH'].join(':')

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: '/opt/ruby/bin:$PATH' }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
