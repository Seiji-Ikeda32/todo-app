class AddTitleToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :title, :string
  end
end
