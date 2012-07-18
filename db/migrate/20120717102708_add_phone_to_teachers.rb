class AddPhoneToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :phonen, :double
  end
end
