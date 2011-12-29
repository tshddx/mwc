class CallingList < ActiveRecord::Base
  has_many :members
  belongs_to :owner, :class_name => "member", :foreign_key => "user_id"

  validates :user_id, :presence => true
end
