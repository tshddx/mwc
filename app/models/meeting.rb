class Meeting < ActiveRecord::Base
  has_many :reservations
  has_many :members_reserved, :through => :reservations, :source => :member
  
  has_many :meetings_attended, :class_name => "MeetingAttended"
  has_many :members_attended, :through => :meetings_attended, :source => :member

  def past?
    self.date <= Time.now
  end
end
