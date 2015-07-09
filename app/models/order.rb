class Order < ActiveRecord::Base

  belongs_to :partner_shop
  belongs_to :customer
  belongs_to :link_visit

  #id
  #partner_shop_id
  #amount_of_items
  #full_value
	#system_reward

  def init_reward
  end

end
