class AddCompletedToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :completed, :boolean, :default => 0
  end
end
