class CreateOffer < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :name
      t.text :description
      t.integer :partner_shop_id
      t.string :reward_type
      t.integer :hold_period
      t.float :fixed_cash
      t.float :percent
      t.text :referrer_link_head
      t.string :state
    end
  end
end
