class CreateTanukis < ActiveRecord::Migration
  def up
    create_table :tanukis do |t|
      t.string :name
      t.boolean :male

      t.timestamps
    end
  end

  def down
    drop_table :tanukis
  end  
end
