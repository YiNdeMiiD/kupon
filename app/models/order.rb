class Order < ActiveRecord::Base

  belongs_to :partner_shop
  belongs_to :customer
  belongs_to :link_visit

  #id
  #partner_shop_id
  #customer_id
  #link_visit_id
  #amount_of_items
  #full_value
	#system_reward

  def trigger( params )
  	link_visit = LinkVisit.find_by( params[ :sub_id ] )
    #creates new order
    init_reward
  end

  def init_reward
  	offer = link_visit.offer
  	system_reward = case offer.reward_type
								  	when 'fixed_cash'
								  		offer.fixed_sum * amount_of_items
								  	when 'percent'
								  		offer.percent * full_value
								  	end
  	Reward.new( offer, system_reward )
  end

end
