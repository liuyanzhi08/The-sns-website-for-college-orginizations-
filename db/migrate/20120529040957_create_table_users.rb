class CreateTableUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.string :microblogging
      t.string :description
      t.integer :society_id

      t.timestamps
    end
  end

end
