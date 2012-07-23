class Board < ActiveRecord::Base
  has_many :conversations
  
  attr_accessible :id, :title
end
