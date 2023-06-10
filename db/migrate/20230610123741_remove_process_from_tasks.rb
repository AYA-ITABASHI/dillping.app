class RemoveProcessFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :process, :string
  end
end
