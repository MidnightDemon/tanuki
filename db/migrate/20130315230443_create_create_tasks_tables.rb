class CreateCreateTasksTables < ActiveRecord::Migration
  def up
    create_table :create_tasks_tables do |t|
      t.string :icon
      t.string :description

      t.timestamps
    end
  end

def down
    drop_table :create_tasks_tables
  end
end
