class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :city
      t.string :name
      t.string :street
      t.string :state
      t.string :country
      t.float :price

      t.timestamps
    end
  end
end
