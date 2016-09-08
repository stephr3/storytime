class Component < ActiveRecord::Base
  belongs_to :story
  validates :image, :presence => true
  validates :text, :length => { maximum: 200 }
  validates :user, :length => { maximum: 10 }
end
