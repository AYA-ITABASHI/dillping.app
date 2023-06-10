class RemoveStartTimeFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :start_time, :integer
  end
end
