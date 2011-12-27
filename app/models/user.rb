class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates :calling_list_id, :uniqueness => true, :allow_nil => true

  has_many :user_attributes
  has_one :calling_list

  def name
    "#{first_name} #{last_name}"
  end

  def caller
    calling_list.owner
  end
end
