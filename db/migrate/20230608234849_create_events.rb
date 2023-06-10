class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :task_id
      t.string :memo
      t.timestamps
    end
  end
end
