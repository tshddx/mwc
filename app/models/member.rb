class Member < ActiveRecord::Base
  has_one :calling_list
  
  has_many :meeting_reservations, :class_name => "Reservation"
  has_many :meetings_reserved, :through => :reservations, :source => :meeting
  
  has_many :meeting_attendeds, :class_name => "MeetingAttended"
  has_many :meetings_attended, :through => :meetings_attended, :source => :meeting

  validates :calling_list_id, :uniqueness => true, :allow_nil => true

  def name
    "#{first_name} #{last_name}"
  end

  def caller
    calling_list.owner
  end
end
