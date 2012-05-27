class AddForeinerKeyToUser < ActiveRecord::Migration
  def change
    add_column :users, :society_id, :Fixnum

  end
end
