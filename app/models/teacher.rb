class Teacher < ActiveRecord::Base
  attr_accessible :cv, :name, :price, :subject, :photo, :phonen
  
  has_attached_file :photo

  
  #:url  => "/assets/teachers/:id/:style/:basename.:extension",
   #               :path => ":rails_root/public/assets/teachers/:id/:style/:basename.:extension"


validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
   validates :name, presence: true, length: {maximum: 50}
  validates :cv, presence: true, length: {minimum: 50}
  validates :price, presence: true
   validates :phonen, presence: true



def self.search(search, page)
  paginate :per_page => 5, :page => page,
           :conditions => ['name like ?', "%#{search}%"],
           :order => 'name'
end




end
