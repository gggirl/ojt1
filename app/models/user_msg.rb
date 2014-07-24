class UserMsg < ActiveRecord::Base
  belongs_to :Chatiw
  attr_accessible :message
end
