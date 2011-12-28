class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  validates :calling_list_id, :uniqueness => true, :allow_nil => true

  has_many :user_attributes
  has_one :calling_list
  
  has_many :meeting_reservations, :class_name => "Reservation"
  has_many :meetings_reserved, :through => :reservations, :source => :meeting
  
  has_many :meeting_attendeds, :class_name => "MeetingAttended"
  has_many :meetings_attended, :through => :meetings_attended, :source => :meeting

  def name
    "#{first_name} #{last_name}"
  end

  def caller
    calling_list.owner
  end
end
