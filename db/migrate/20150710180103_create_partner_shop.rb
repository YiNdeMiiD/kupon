class CreatePartnerShop < ActiveRecord::Migration
  def change
    create_table :partner_shops do |t|
      t.text :name
      t.text :reward_type
      t.integer :hold_period
    end
  end
end
