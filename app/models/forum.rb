class Forum < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :replies, :dependent => :destroy
  belongs_to :employee
  validates :title, :content, presence: true
end
