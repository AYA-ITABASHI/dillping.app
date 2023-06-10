class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :process
      t.integer :member_id
      t.integer :start_time
      t.integer :finish_time
      t.integer :event_id

      t.timestamps
    end
  end
end
