class RenameCallingListUserIdToMemberId < ActiveRecord::Migration
  def change
    rename_column :calling_lists, :user_id, :member_id
  end
end
