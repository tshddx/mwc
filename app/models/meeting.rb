class Meeting < ActiveRecord::Base
  has_many :reservations
  has_many :users_reserved, :through => :reservations, :source => :user
  
  has_many :meetings_attended, :class_name => "MeetingAttended"
  has_many :users_attended, :through => :meetings_attended, :source => :user
end
