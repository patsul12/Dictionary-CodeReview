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

get '/words/:id' do
  @word = Word.find(params[:id].to_i)
  erb :word
end

get '/words/:id/add_definition' do
  @word = Word.find(params[:id].to_i)
  erb :add_definition_form
end

post '/words/:id/add_definition' do
  @word = Word.find(params[:id].to_i)
  term = params[:term]
  definition = Definition.new({:term => term})
  @word.add_definition(definition)
  redirect "/words/#{@word.id}"
end
