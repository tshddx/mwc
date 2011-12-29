class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.boolean :nursery_needed
      t.boolean :pm_meetings_only
      t.integer :calling_list_id
      t.string :church

      t.timestamps
    end
  end
end
