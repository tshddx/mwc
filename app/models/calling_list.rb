class CallingList < ActiveRecord::Base
  has_many :members
  belongs_to :owner, :class_name => "Member"

  validates :member_id, :presence => true
end
