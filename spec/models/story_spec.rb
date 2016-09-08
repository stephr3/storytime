require 'rails_helper'

describe Story do
  it { should have_many :components }
  it { should have_many(:images).through(:components) }
  it { should validate_length_of(:title).is_at_most(30).on(:create) }
  it { should validate_length_of(:creator).is_at_most(10).on(:create) }
  it { should validate_presence_of :title }
  it { should validate_presence_of :creator }
end
