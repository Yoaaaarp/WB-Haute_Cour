class User < ActiveRecord::Base
  has_secure_password
  has_many :orders
  validates_presence_of :name, :password, :street, :npa, :city, :canton
end
