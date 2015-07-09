class PartnerShop < ActiveRecord::Base

	has_many :offers
	has_many :link_visits
	has_many :orders
	has_many :rewards

	#id
	#name
	#reward_kind fixed_cash/percent
	#hold_period

end
