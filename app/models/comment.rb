class Comment < ActiveRecord::Base
  
  belongs_to :conversation
  belongs_to :user
  

  validates_presence_of :body
  attr_accessible :body, :conversation_id, :id, :user_id
end
