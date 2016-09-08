class Component < ActiveRecord::Base
  belongs_to :story
  belongs_to :image
  validates :text, :length => { maximum: 200 }
  validates :user, :length => { maximum: 10 }
end
