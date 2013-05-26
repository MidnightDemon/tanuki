class AddTanukiLimitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tanuki_limit, :integer, :default => "1"
  end
end
