class Customer < ActiveRecord::Base
	require 'digest'

	has_one :customer_balance
	has_many :wallets
	has_many :link_visits
	has_many :orders

	before_save :generate_uniq_user_id

	#id
	#name
	#password
	#UserID ( for SUB_ID )
	#balance_on_hold
	#balance_confirmed
	#state ( active/banned )

  def generate_uniq_user_id
    user_id = Digest::SHA256.hexdigest id.to_s + name + Time.zone.now.to_i.to_s
  end

  def add_balance_on_hold( value )
  	balance_on_hold -= value
  	save!
  end

  def confirm_balance( value )
    balance_on_hold -= value
    balance_confirmed += value
    save!
  end

end
