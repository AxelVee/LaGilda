class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.date :data
      t.text :hour
      t.integer :teacher_id

      t.timestamps
    end
  end
end
