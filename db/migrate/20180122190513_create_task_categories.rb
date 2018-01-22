class CreateTaskCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :taskcategories do |t|
      t.belongs_to :tasks
      t.belongs_to :categories
    end
  end
end
