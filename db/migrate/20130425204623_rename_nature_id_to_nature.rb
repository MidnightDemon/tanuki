class RenameNatureIdToNature < ActiveRecord::Migration
  def change
  	rename_column :tanukis, :nature_id, :nature
  end
end
