class UserAttribute < ActiveRecord::Base
  belongs_to :user
  validates :name, :uniqueness => { :scope => :user_id }
  validates :user_id, :presence => true
  validates :user_id, :numericality => { :only_integer => true }

end
