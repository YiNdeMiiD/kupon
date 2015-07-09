class Wallet < ActiveRecord::Base

	belongs_to :customer

	#id
	#name
	#kind
	#number
	#code
	#state ( approved/moderating )

end
