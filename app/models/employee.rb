class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  attr_accessible :chatid, :empid, :empname, :ordernumber
  validates :empid, :empname, :ordernumber, :chatid, presence: true
  validates :empid, :ordernumber, :chatid, presence:true, numericality: true
  validates :empid, :ordernumber, :chatid, uniqueness: { case_sensitive: false}
  validates :empname, format: { with: /\A[a-z]+\Z/}
end
