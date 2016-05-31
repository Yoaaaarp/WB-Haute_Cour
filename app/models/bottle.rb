class Bottle < ActiveRecord::Base
	has_many :orders, :through => :link
	belongs_to :wine
	validates_presence_of :wine_id
end
