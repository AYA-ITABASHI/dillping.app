class ChangeFinishTimeTypeInTableTask < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :finish_time, :date
  end
end
