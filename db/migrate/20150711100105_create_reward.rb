class CreateReward < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :link_visit_id
      t.integer :order_id
      t.integer :offer_id
      t.float :value
      t.string :state, default: 'on_hold'
      t.datetime :hold_period_end
    end
  end
end
