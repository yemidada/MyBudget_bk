require 'rails_helper'

RSpec.describe Group, type: :model do
  subject(:group) { Group.new(name: 'Salary', icon: 'icon') }

  before { group.save! }

  it 'Name should be present' do
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'Icon should be present' do
    group.icon = nil
    expect(group).to_not be_valid
  end
end
