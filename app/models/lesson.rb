class Lesson < ActiveRecord::Base
  
  belongs_to :teacher
  
  attr_accessible :data, :hour, :teacher_id
end
