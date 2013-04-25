class RenameNameIdToName < ActiveRecord::Migration
  def change
  	rename_column :tanukis, :name_id, :name
  end
end
