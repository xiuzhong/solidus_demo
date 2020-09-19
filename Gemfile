# frozen_string_literal: true

source "https://rubygems.org"

gem 'solidus'
gem 'solidus_auth_devise'
gem 'turbolinks', '~> 5.0.0'
gem 'bootstrap'

# for development
gem 'bootsnap', require: false
gem 'listen'
gem 'sqlite3'

group :development do
  gem "capistrano", "~> 3.14", require: false
  gem "capistrano-rails", "~> 1.3", require: false
  gem "capistrano-bundler", require: false
  gem "capistrano-rvm", require: false
  gem 'capistrano3-puma', require: false
  gem "ed25519", require: false
  gem "bcrypt_pbkdf", require: false
end

gem 'uglifier'

group :production do
  gem 'puma'
end
