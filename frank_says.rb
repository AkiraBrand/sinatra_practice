require 'sinatra'
require 'erb'

get '/' do
  'Hello, world!'
end

get '/frank-says' do
  "Put this in your pipe and smoke it!"
end

get "/monstas" do
  p params
  @name = params["name"]
  erb :monstas
end
#this is a wrapping template, sinatra calls it a layout template

get '/monstas/:name' do
  @name = params["name"]
  erb :monstas
end
