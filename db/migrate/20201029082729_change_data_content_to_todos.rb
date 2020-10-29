class ChangeDataContentToTodos < ActiveRecord::Migration[5.2]
  def up
    change_column :todos, :content, :text
  end
  def down
    change_column :todos, :content, :string
  end
end
