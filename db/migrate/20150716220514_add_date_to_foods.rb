class AddDateToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :date, :datetime
  end
end
