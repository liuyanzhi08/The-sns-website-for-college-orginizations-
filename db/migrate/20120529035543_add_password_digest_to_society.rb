class AddPasswordDigestToSociety < ActiveRecord::Migration
  def change
    add_column :societies, :password_digest, :string

  end
end
