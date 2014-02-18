class RandomNumber < ActiveRecord::Base
  
  attr_accessible :Name

  #validates_format_of :accept, :with => %r{\.(csv)$}i, :message => 'must be a url for csv.'
  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
  		RandomNumber.create! row.to_hash
  	end
  end
end
