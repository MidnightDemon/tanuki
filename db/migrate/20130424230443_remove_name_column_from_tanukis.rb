class RemoveNameColumnFromTanukis < ActiveRecord::Migration
  def up
  	remove_column :tanukis, :name, :string
  end

  def down
  	add_column :tanukis, :name
  end
end
