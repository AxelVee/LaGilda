class RemoveGmpasToEvents < ActiveRecord::Migration
  def up
    remove_column :events, :gmpas
  end

  def down
    add_column :events, :gmpas, :boolean
  end
end
