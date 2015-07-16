class RemoveFoodsUsers < ActiveRecord::Migration
  def change
    drop_table :foods_users
  end
end
