class AddFinishTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :finish_time, :string
  end
end
