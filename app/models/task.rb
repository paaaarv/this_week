class Task < ActiveRecord::Base
  has_many :task_categories
  has_many :categories, through: :task_categories
  belongs_to :user

end
