

class UsersController < ApplicationController

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    @user = User.create(username: params[:username], password: params[:password])
  end
end
