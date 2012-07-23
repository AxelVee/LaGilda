class Teacher < ActiveRecord::Base
  
 
  has_many :lessons
  has_many :votes
  attr_accessible :cv, :name, :price, :subject, :photo, :phonen

  has_attached_file :photo


  


validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
   validates :name, presence: true, length: {maximum: 50}
  validates :cv, presence: true, length: {minimum: 50}
  validates :price, presence: true
   validates :phonen, presence: true

#define_index do
 # indexes cv
  #indexes :name, :sortable => true
  #indexes :subject
#end

def self.search(search)
  if search
  find(:all, :conditions => ['subject LIKE ? OR name LIKE?', "%#{search}%","%#{search}%" ])
  else
    find(:all)
  end
 end





end
