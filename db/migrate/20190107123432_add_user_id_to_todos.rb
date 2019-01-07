class AddUserIdToTodos < ActiveRecord::Migration[5.2]
  def up
    add_reference :todos, :user, index: true
  end

  def down
    remove_reference :todos, :user, index: true
  end
end
