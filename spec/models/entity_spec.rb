require 'rails_helper'

RSpec.describe Entity, type: :model do
  subject(:user) { User.new(name: 'John Peter', email: 'a@a.com', password: '123456') }
  let(:entity) do
    Entity.new(authorId: user.id, name: 'Indomine', amount: 10)
  end

  before { user.save! }
  before { entity.save! }

  it 'Name should be present' do
    entity.name = nil
    expect(entity).to_not be_valid
  end

  it 'Mesurement unit should be present' do
    entity.amount = nil
    expect(entity).to_not be_valid
  end
end
