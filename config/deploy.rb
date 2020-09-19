# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "NextBig"
set :repo_url, "git@github.com:xiuzhong/solidus_demo.git"
set :user, 'ec2-user'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/#{fetch(:user)}/nextbig"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp", "public"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :rails_env, :production

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :puma_threads,    [4, 16]
set :puma_workers,    0
set :puma_init_active_record, true
set :puma_conf, -> { File.join(current_path, 'config', 'puma.rb') }
