class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :body
      t.integer :status

      t.timestamps
    end
  end
end