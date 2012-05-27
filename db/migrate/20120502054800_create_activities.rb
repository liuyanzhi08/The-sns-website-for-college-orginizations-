class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :publish_time
      t.text :content

      t.timestamps
    end
  end
end
