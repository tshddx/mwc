class CreateMeetingAttendeds < ActiveRecord::Migration
  def change
    create_table :meeting_attendeds do |t|
      t.integer :meeting_id
      t.integer :user_id

      t.timestamps
    end
  end
end
