class Reward < ActiveRecord::Base
	include AASM

	belongs_to :link_visit
  belongs_to :order
  belongs_to :customer
  belongs_to :offer

	#id
	#conversion_id
	#order_id
	#conversion_id
	#offer_id
	#value
	#state
	#hold_period_end

  aasm do

    state :on_hold, :initial => true
    state :confirmed

    event :confirm do
      transitions :from => :on_hold, :to => :confirmed
      after do
      	customer.confirm_balance( value )
      end
    end

  end    

  end



end
