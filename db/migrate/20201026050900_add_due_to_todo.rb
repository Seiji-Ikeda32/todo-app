class AddDueToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :due, :string
  end
end
