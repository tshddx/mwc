class CreateCallingLists < ActiveRecord::Migration
  def change
    create_table :calling_lists do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
