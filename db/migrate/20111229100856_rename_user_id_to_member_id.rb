class RenameUserIdToMemberId < ActiveRecord::Migration
  def change
    rename_column :reservations, :user_id, :member_id
    rename_column :meeting_attendeds, :user_id, :member_id
  end
end
