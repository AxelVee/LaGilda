class AddLongitudeAndLatitudeAndDateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :data, :text
    add_column :events, :longitude, :float
    add_column :events, :latitude, :float
  end

 def up
  add_column :events, :data, :text
    add_column :events, :longitude, :float
    add_column :events, :latitude, :float
  end
  
  def down
  remove_column :events, :data, :text
    remove_column :events, :longitude, :float
    remove_column :events, :latitude, :float

end
end



