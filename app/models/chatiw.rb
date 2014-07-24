class Chatiw < ActiveRecord::Base
  attr_accessible :content
  has_many :UserMsgs
end
