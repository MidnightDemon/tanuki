class CreateFoodTimes < ActiveRecord::Migration
  def change
    create_table :food_times do |t|
      t.integer :slot
      t.string :name

      t.timestamps
    end
  end
end
