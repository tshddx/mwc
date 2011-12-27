class AddNameToUserAttributes < ActiveRecord::Migration
  def change
    add_column :user_attributes, :name, :string
  end
end
