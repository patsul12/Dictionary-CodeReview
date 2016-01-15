require 'sinatra'
require 'sinatra/reloader'
require './lib/definition'
require './lib/definition'

get '/' do
  erb :index
end
