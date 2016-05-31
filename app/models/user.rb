class User < ActiveRecord::Base
	has_many :orders
	validates_presence_of :name, :pwd, :street, :city, :npa, :canton
end
