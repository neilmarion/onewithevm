require "bundler/capistrano"
require 'capistrano/ext/multistage'

server ENV['SERVER_ADDRESS'], :web, :app, :db, primary: true
set :stages, %w(production staging)
set :default_stage, "staging"

set :repo, "camatiz"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:neilmarion/#{repo}.git"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup"
