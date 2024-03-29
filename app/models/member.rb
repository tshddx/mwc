class Member < ActiveRecord::Base
  belongs_to :calling_list
  
  has_many :meeting_reservations, :class_name => "Reservation"
  has_many :meetings_reserved, :through => :meeting_reservations, :source => :meeting
  
  has_many :meeting_attendeds, :class_name => "MeetingAttended"
  has_many :meetings_attended, :through => :meeting_attendeds, :source => :meeting

  def name
    "#{first_name} #{last_name}"
  end

  def caller
    calling_list.owner
  end
end
