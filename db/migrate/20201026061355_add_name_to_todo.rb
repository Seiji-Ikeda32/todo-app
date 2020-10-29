class AddNameToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :name, :string
  end
end
