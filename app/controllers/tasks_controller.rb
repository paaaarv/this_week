class TasksController < ApplicationController

  get '/tasks' do
    @tasks = Task.all 
  end





end
