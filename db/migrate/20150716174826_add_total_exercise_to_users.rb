class AddTotalExerciseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_exercise, :integer
  end
end
