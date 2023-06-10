class AddProcessToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :process, :integer
  end
end
