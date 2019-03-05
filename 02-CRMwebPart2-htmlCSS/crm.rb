require './contact'
require 'sinatra'

get '/' do
  redirect to '/contacts'
end

get '/contacts' do

  @contacts = Contact.all

  erb :contact
end

get '/about' do
  erb :about
end

after do
  ActiveRecord::Base.connection.close
end
