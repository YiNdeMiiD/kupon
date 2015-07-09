class Customer < ActiveRecord::Base

	has_one :customer_balance
	has_mane :wallets
	has_many :link_visits
	has_many :orders

	#id
	#name
	#password
	#UserID ( for SUB_ID )
	#balance_on_hold
	#balance_confirmed
	#state ( active/banned )

  def confirm_balance( value )
    balance_on_hold -= value
    balance_confirmed += value
    save!
  end

end
