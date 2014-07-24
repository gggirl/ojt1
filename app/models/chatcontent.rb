class Chatcontent < ActiveRecord::Base
  attr_accessible :content
  has_many :message
end
