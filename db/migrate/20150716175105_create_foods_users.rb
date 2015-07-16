class CreateFoodsUsers < ActiveRecord::Migration
  def change
    create_table :foods_users do |t|
      t.integer :food_id
      t.integer :user_id
    end
  end
end
