require 'sinatra'
require 'sinatra/reloader'
require './lib/definition'
require './lib/word'

get '/' do
  @words = Word.all
  erb :index
end

get '/words/new' do
  erb :new_word_form
end

post '/words/new' do
  name = params[:name]
  word = Word.new({:name => name})
  word.save
  redirect '/'
end
