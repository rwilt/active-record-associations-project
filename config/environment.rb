require "bundler/setup"
Bundler.require
require "sinatra/activerecord"
require "sinatra/activerecord/rake"
require "ostruct"
require "date"
require "pry"
require_all 'app/models'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => './db/library.db')