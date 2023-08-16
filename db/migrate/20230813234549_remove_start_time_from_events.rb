class RemoveStartTimeFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :start_time, :string
  end
end
