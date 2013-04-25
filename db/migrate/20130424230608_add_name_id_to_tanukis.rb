class AddNameIdToTanukis < ActiveRecord::Migration
  def change
  	add_column :tanukis, :name_id, :integer
  end
end
