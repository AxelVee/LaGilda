class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :cv
      t.string :subject
      t.float :price

      t.timestamps
    end
  end
end
