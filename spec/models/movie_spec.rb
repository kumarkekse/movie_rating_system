require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { should have_many(:reviews) }
end
