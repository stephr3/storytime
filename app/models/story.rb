class Story < ActiveRecord::Base
  has_many :components
  validates :title, :length => { maximum: 30 }
  validates :creator, :length => { maximum: 10 }
  validates :title, :creator, :presence => true
end
