class TasksController < ApplicationController

  get '/tasks' do
    @tasks = Task.all
    erb :"/tasks/index"
  end

  get '/tasks/new' do
    erb :'/tasks/new'
  end

  post '/tasks/new' do
    if params[:name] == "" || params[:summary] == ""
      redirect '/tasks/new'
    else
      @task = Task.create(name: params[:name], summary: params[:summary])
    end
  end



end
