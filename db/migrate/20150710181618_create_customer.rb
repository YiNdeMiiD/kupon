class CreateCustomer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :name
      t.string :password
      t.string :user_id
      t.float :balance_on_hold, default: 0
      t.float :balance_confirmed, default: 0
      t.string :state, default: 'moderating'
    end
  end
end
