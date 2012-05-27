class AddDescriptionToSociety < ActiveRecord::Migration
  def change
    add_column :societies, :description, :string

  end
end
