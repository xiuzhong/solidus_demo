#!/usr/bin/env puma

directory '/home/ec2-user/nextbig/current'
rackup "/home/ec2-user/nextbig/current/config.ru"
environment 'production'

tag ''

pidfile "/home/ec2-user/nextbig/shared/tmp/pids/puma.pid"
state_path "/home/ec2-user/nextbig/shared/tmp/pids/puma.state"
stdout_redirect '/home/ec2-user/nextbig/shared/log/puma.error.log', '/home/ec2-user/nextbig/shared/log/puma.access.log', true


threads 4,16

bind 'unix:///home/ec2-user/nextbig/shared/tmp/sockets/puma.sock'

workers 0

restart_command 'bundle exec --keep-file-descriptors puma'

prune_bundler

on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = ""
end
