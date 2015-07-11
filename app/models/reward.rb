class Reward < ActiveRecord::Base
	include AASM

	belongs_to :link_visit
  belongs_to :order
  belongs_to :customer
  belongs_to :offer

  scope :on_hold, -> { where( state: 'on_hold' ) }

	#id
	#link_visit_id
	#order_id
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
      	state = 'confirmed'
      	save!
      end
    end

  end    

  def initialize( offer, system_reward )
    #creates new reward
    conversion.customer.add_balance_on_hold( system_reward )
  end

  def check_on_hold
    on_hold.where( hold_period_end <= Time.zone.now ).each { |reward| reward.confirm } 
  end

end
