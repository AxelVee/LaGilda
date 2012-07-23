class Vote < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :teacher
  validates_inclusion_of :value, :in => 1..10, :message => "solo voti tra 1 e 10" 
  attr_accessible :teacher_id, :user_id, :value

 VALUES = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']



end
