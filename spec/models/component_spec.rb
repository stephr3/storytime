require 'rails_helper'

describe Component do
  it { should belong_to :story }
  it { should validate_presence_of :image }
  it { should validate_length_of(:text).is_at_most(200).on(:update) }
  it { should validate_length_of(:user).is_at_most(10).on(:update) }
end
