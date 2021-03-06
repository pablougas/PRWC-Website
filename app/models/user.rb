class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
  has_many :events
  has_many :blogs
  has_many :tasks, through: :assignees
  has_many :notes

  def full_name
    "#{first_name} #{last_name}"
  end

end
