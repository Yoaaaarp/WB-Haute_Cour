class Wine < ActiveRecord::Base
	has_many :bottles
	belongs_to :category
	validates_presence_of :name, :desc, :vineyard, :grape
end
