class AddForeinerKeyToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :society_id, :integer

  end
end
