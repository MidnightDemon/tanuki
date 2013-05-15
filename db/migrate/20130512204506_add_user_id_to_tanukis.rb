class AddUserIdToTanukis < ActiveRecord::Migration
  def change
    add_column :tanukis, :user_id, :integer
  end
end
