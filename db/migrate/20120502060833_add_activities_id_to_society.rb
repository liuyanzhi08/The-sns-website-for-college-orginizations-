class AddActivitiesIdToSociety < ActiveRecord::Migration
  def change
    add_column :societies, :activities_id, :integer

  end
end
