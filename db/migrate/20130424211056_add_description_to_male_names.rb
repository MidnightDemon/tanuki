class AddDescriptionToMaleNames < ActiveRecord::Migration
  def change
    add_column :male_names, :description, :string
  end
end
