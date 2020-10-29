class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.string :due
      t.string :name
      t.timestamps
    end
  end
end
