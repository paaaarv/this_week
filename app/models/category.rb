class Category < ActiveRecord::Base
  has_many :taskcategories
  has_many :tasks, through: :taskcategories


end
