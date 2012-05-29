class AddForeinerKeyToSociety < ActiveRecord::Migration
  def change
    add_column :societies, :properties_id, :integer

    add_column :societies, :users_id, :integer

  end
end
