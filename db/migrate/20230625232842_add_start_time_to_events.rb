class AddStartTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_time, :string
  end
end
