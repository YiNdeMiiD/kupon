class LinkVisit < ActiveRecord::Base

	belongs_to :offer
	belongs_to :customer
	has_many :orders

	#id
	#sub_id
	#customer_id
	#offer_id
	#partner_shop_id??
	#redirect_link
	#state!!!
	#value
end
