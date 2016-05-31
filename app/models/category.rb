class Category < ActiveRecord::Base
	has_many :wines
	validates_presence_of :name
end
