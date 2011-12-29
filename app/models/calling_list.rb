class CallingList < ActiveRecord::Base
  has_many :members
  belongs_to :owner, :class_name => "Member", :foreign_key => "member_id"

  validates :member_id, :presence => true, :uniqueness => true
end
