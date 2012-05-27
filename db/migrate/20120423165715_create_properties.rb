class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
