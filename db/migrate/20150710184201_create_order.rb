class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :partner_shop_id
      t.integer :amount_of_items
      t.float :full_value
      t.float :system_reward
    end
  end
end
