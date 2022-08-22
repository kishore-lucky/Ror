class AddUserNoToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :user_no, :integer
    add_index :tasks, :user_no
  end
end
