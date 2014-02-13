class Employee < ActiveRecord::Base
  attr_accessible :Gender, :NRCNo, :address, :birthday, :password_confirmation, :entrydate, :password, :phno, :specialize, :travelfee, :userid, :username
  #attr_accessor :username
  validates :userid, :username, :password, :password_confirmation, :NRCNo, :specialize, :phno, :address, :travelfee, presence: true
  validates :userid, :phno, :travelfee, numericality: { only_integer: true }
  validates_presence_of :password_confirmation  
  validates_confirmation_of :password, :message => "should match passwords"
  #validates :username, format: { with: /\A([^@\s]+)((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  	#validates :password, :confirmation => true
  validates :username, format: { with: %r{\A[a-zA-Z][a-zA-Z0-9\s]*\z} }
end
 

