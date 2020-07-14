require 'rails_helper'

RSpec.describe Comment do
  context 'Validations' do
    it { should validate_presence_of(:body) }
  end

  context 'Dependency' do
    it { should belong_to(:tweet)}
  end
end