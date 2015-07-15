class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
    end
    add_column :users, :total_calories, :integer
  end
end
