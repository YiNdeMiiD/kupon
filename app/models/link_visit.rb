class LinkVisit < ActiveRecord::Base

	belongs_to :offer
	belongs_to :customer
	has_many :orders

	#id
	#sub_id
	#customer_id
	#offer_id
	#redirect_link

	def initialize( customer, offer )
    customer_id = customer.id
    sub_id = customer.user_id
    offer_id = offer.id
    redirect_link = offer.url_head + '?sub_id=' + sub_id
    save!
	end

end
