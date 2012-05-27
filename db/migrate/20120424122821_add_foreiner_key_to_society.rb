class AddForeinerKeyToSociety < ActiveRecord::Migration
  def change
    add_column :societies, :properties_id, :Fixnum

    add_column :societies, :users_id, :Fixnum

  end
end
