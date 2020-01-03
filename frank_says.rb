require 'sinatra'
require 'erb'

get '/' do
  'Hello, world!'
end

get '/frank-says' do
  "Put this in your pipe and smoke it!"
end

#this is a wrapping template, sinatra calls it a layout template

get '/monstas/:name' do
  erb :monstas, { :locals => params }
end
