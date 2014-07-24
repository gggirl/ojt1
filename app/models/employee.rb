class Employee < ActiveRecord::Base
 

  
  #defult_scope { where(employee_id: Employee.current_id) }
   #Include default devise modules. Others available are:
   #:token_authenticatable, :confirmable,
   #:lockable, :timeoutable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :contact
  attr_accessible :Gender, :NRCNo, :address, :birthday, :password_confirmation, :entrydate, :password, :phno, :specialize, :travelfee, :userid, :username, :email, :age
  #attr_accessor :username
  validates :userid, :age, :email, :username, :password, :password_confirmation, :NRCNo, :specialize, :phno, :address, :travelfee, presence: true
  validates :userid, :age, :phno, :travelfee, numericality: { only_integer: true }
  validates_presence_of :password_confirmation  
  validates_confirmation_of :password, :message => "should match passwords"
  #validates :username, format: { with: /\A([^@\s]+)((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  	#validates :password, :confirmation => true
  validates :username, format: { with: %r{\A[a-zA-Z][a-zA-Z0-9\s]*\z} }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_inclusion_of :Gender, :in => ["Male", "Female"]
  has_many :replies
  has_many :forums
  has_many :replies
  self.per_page = 10
    #for mon
  def self.to_csv test
  CSV.generate do |csv|
        csv << ["Id", "Name"]
     test.each do |employee|
        #csv << employee.attributes.values_at(*columns_names)
        csv << [employee.userid, employee.username]
    end
   end 
 end
end
<<<<<<< HEAD
end
end



=======
WillPaginate.per_page = 10








>>>>>>> a5fa04c9126fb944b4ee80886f7e71ade6159263
 

