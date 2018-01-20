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

  get '/tasks/:id' do
    @task = Task.find(params[:id])
    erb :'/tasks/show'
  end

  get '/tasks/:id/edit' do
    @task = Task.find(params[:id])
    erb :'/tasks/edit'
  end

  patch '/tasks/:id/' do
    @task = Task.find(params[:id])
  end

end
