class AddDescriptionToFemaleNames < ActiveRecord::Migration
  def change
    add_column :female_names, :description, :string
  end
end
