class AddUseridToEvents < ActiveRecord::Migration
  def change
    add_column :events, :user_id, :integer
  end
  
  add_index :events, :user_id
end
