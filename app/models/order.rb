class Order < ActiveRecord::Base
	belongs_to :status
	belongs_to :user
	has_many :bottles, :through => :links
	has_many :links
	validates_presence_of :status_id, :user_id
end