class AddSocietyIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :society_id, :integer

  end
end
