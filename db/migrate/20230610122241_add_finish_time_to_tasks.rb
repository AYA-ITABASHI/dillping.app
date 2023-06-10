class AddFinishTimeToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :finish_time, :string
  end
end
