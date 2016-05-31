class Wine < ActiveRecord::Base
	has_many :bottles
	belongs_to :category
	validates_presence_of :nom, :des, :vineyard, :grape
end
