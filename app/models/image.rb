class Image < ActiveRecord::Base
  has_many :components
  has_many :stories, through: :component
end
