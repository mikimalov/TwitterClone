require 'rails_helper'

RSpec.describe Tweet do
  context 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(5) }
  end

  context 'Dependency' do
    it { should have_many(:comments).dependent(:destroy)}
  end
end