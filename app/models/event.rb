class Event < ActiveRecord::Base
 





attr_accessible :city, :country, :name, :price, :state, :street, :longitude, :latitude, :data

 validates :name, presence: true, length: {maximum: 50}
  validates :city, presence: true, length: {maximum: 50}
validates :user_id, presence: true
  validates :country, presence: true, length: {maximum: 50}
  validates :street, presence: true, length: {maximum: 50}
  #validates :date, presence: true

belongs_to :user

def address
  [street,city,country].compact.join(", ")
end

geocoded_by :address
after_validation :geocode
#, if => :address_changed?

default_scope :order => 'events.created_at DESC'


end
