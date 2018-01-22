class Task < ActiveRecord::Base
  has_many :taskcategories
  has_many :categories, through: :taskcategories
  belongs_to :user

end
