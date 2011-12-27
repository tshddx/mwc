class AddCallingListIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :calling_list_id, :integer
  end
end
