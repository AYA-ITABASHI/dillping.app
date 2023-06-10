class RemoveFinishTimeFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :finish_time, :integer
  end
end
