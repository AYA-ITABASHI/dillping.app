class CreateTimelogs < ActiveRecord::Migration[6.1]
  def change
    create_table :timelogs do |t|
     t.integer :measurement_time
     t.string :start_date
     t.string :finish_date
     t.integer :diary
      t.timestamps
    end
  end
end
