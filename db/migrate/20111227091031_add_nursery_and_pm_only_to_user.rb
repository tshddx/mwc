class AddNurseryAndPmOnlyToUser < ActiveRecord::Migration
  def change
    add_column :users, :nursery_needed, :boolean
    add_column :users, :pm_meetings_only, :boolean
  end
end
