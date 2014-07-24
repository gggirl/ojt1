class Reply < ActiveRecord::Base
  belongs_to :forum
  belongs_to :employee
  attr_accessible :body
  validates :body, presence: true
end
