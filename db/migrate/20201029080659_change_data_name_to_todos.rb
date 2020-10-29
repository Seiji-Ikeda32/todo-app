class ChangeDataNameToTodos < ActiveRecord::Migration[5.2]
  def up
    change_column :todos, :name, :string
  end
  def down
    change_column :todos, :name, :text
  end
end
