class RoomMessage < ActiveRecord::Base
  attr_accessible :message
  belongs_to :content
end
