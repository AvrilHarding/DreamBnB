require 'sinatra/base'
require './lib/space'
require './lib/user'


class DreamBnB < Sinatra::Base

  get '/test' do
    'Test page'
  end


  get '/add-space' do
    erb :add_space
  end

  post '/new-space' do
    @space = Space.create(space_name: params[:name], space_description: params[:description], space_price: params[:price],
      from_date: params[:from], to_date: params[:to])
    redirect '/spaces'
  end

  get '/spaces' do
    @spaces = Space.all
    erb :spaces

  end

  get '/' do
    erb :"sign_up"
  end


  post '/' do
    @user = User.create(user_name: params[:user_name], password: params[:password])
    redirect '/spaces'
  end

  get '/calendar' do
    erb :calendar
  end

  run! if app_file == $0
end
