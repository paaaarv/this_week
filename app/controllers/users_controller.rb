

class UsersController < ApplicationController
  enable :sessions
  set :session_secret, "password_security"
  
  get '/signup' do
    erb :signup
  end

  post '/signup' do
    if params[:username] == "" || params[:password] == ""
      redirect '/signup'
    else
      @user = User.create(username: params[:username], password: params[:password])
    end
  end

  get '/login' do
    erb :login
  end

  post '/login' do
  end
end
