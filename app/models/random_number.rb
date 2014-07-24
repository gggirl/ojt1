
class RandomNumber < ActiveRecord::Base  
 #RandomNumber.delete_all
  
  #attr_accessor :File_file_name
  #validates :my_csv_file, :csv => true
  attr_accessible :Name
   #validates :file, :with => %r{\.(csv)$}i
  #validates_format_of :file, :with => %r{\.(csv)$}i, :message => 'must be a url for csv.'
 
  def self.import(file)
    RandomNumber.delete_all
  	CSV.foreach(file.path, headers: true) do |row|
  		RandomNumber.create! row.to_hash

  	end

  end
  
 
end


