class Category < ActiveRecord::Base
  has_many :task_categories
  has_many :tasks, through: :task_categories


end
