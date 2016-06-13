class Bottle < ActiveRecord::Base
	has_many :orders, :through => :links
	has_many :links
	belongs_to :wine
	validates_presence_of :wine_id
end
