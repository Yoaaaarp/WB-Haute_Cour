class Order < ActiveRecord::Base
	belongs_to :status
	belongs_to :user
	has_many :bottles, :through => :links
	has_many :links
	validates_presence_of :status_id, :user_id

	def total_price
		total = 0
		self.links.each do |link|
			total = total + (link.number * link.bottle.price)
		end
		return total
	end
end