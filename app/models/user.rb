class User < ActiveRecord::Base
  








  has_many :conversations
  has_many :events
  has_many :votes

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :surname, :city, :availability, :attitude, :nickskype, :passion, :address
  # attr_accessible :title, :body
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, presence: true, length: {maximum: 50}
  validates :surname, presence: true, length: {maximum: 50}
  validates :email, presence: true, format: {with: email_regex}, uniqueness: {case_sensitive: false}
  
def voted_for?(teacher)
  teacher.votes.where(  teacher_id: teacher.id, user_id: self.id ).present?
end
   
  
  
end

# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  name                   :string(255)
#  surname                :string(255)
#  address                :string(255)
#  availability           :float
#  city                   :string(255)
#  nickskype              :string(255)
#  attitude               :string(255)
#  passion                :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

