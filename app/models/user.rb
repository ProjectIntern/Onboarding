class User < ActiveRecord::Base
  has_secure_password
  has_many :conversations
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }, uniqueness: true
  validates_presence_of :first_name, :last_name, :code

end
