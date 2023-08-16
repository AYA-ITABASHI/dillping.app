class RemoveFinishTimeFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :finish_time, :string
  end
end
