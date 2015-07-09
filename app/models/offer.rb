class Offer < ActiveRecord::Base

	belong_to :partner_shop
	has_many  :link_visits

	#id
	#shop_id
	#reward_kind
	#hold_period
	#fixed_sum (if fixed per item)
	#percent ( if percent per order value, like 0.05 )
	#referrer_link_head
	#offer_state ( actual/exceeded )

	def generate_link( customer )
		redirect_link = referrer_link_head + '?sub_id=' + customer.user_id.to_s
		redirect_link
	end

end
