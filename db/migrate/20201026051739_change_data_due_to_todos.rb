class ChangeDataDueToTodos < ActiveRecord::Migration[5.2]
  def up
    change_column :todos, :due, :string
  end
  
  def down
    change_column :todos, :due, :date
  end
end
