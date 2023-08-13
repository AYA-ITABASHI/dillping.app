class AddMemberIdToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :member, null: false, foreign_key: true
  end
end
