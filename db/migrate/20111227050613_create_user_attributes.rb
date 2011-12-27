class CreateUserAttributes < ActiveRecord::Migration
  def change
    create_table :user_attributes do |t|
      t.integer :user_id
      t.string :value

      t.timestamps
    end
  end
end
