class AddPasswordToSociety < ActiveRecord::Migration
  def change
    add_column :societies, :password, :string
  end
end
