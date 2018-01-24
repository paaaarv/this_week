require 'pry'

class TasksController < ApplicationController

  get '/tasks' do
    @tasks = Task.all
    erb :"/tasks/index"
  end

  get '/tasks/new' do
    @categories = Category.all
    erb :'/tasks/new'
  end

  post '/tasks/new' do
    if params[:name] == "" || params[:summary] == ""
      redirect '/tasks/new'
    else
      binding.pry
      @task = Task.create(name: params[:name], summary: params[:summary])
      if !params["categories"]["name"].empty?
          @task.categories << Category.new(name: params["categories"]["name"])
      end
      redirect "/tasks/#{@task.id}"
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
