require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe '#valid?' do
    it { should validate_presence_of(:body) }
    it { should ensure_length_of(:body).is_at_most(500) }
  end
end
