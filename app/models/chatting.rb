class Chatting < ActiveRecord::Base
  attr_accessible :message
  belongs_to :Chatting


end
