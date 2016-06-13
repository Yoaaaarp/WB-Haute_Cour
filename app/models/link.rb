class Link < ActiveRecord::Base
	belongs_to :bottle
	belongs_to :order
end
