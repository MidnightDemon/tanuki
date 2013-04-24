class CreateNatures < ActiveRecord::Migration
  def up
    create_table :natures do |t|
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :natures
  end  
end
