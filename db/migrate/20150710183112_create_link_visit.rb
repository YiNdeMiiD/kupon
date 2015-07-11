class CreateLinkVisit < ActiveRecord::Migration
  def change
    create_table :link_visits do |t|
      t.string :sub_id
      t.integer :customer_id
      t.integer :offer_id
      t.text :redirect_link
    end
  end
end
