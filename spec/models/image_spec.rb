require 'rails_helper'

describe Image do
  it { should have_many :components }
  it { should have_many(:stories).through(:components) }
end
