require 'rails_helper'

RSpec.describe Product, :type => :model do
  it { should validate_numericality_of(:price).
                is_greater_than(0.00).
                is_less_than(1000.0)
  }
end
