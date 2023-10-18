require 'rails_helper'
RSpec.describe 'Entity', type: :request do
  let(:user) { User.create(name: 'Ola', email: 'test@test.com', password: 'password') }
  let(:entity) do
    Entity.new(authorId: user.id, name: 'Indomine', amount: 10)
  end
  describe 'GET /foods' do
    before :each do
      sign_in user
      get foods_path
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render the correct template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /foods/new' do
    before :each do
      sign_in user
      get new_food_path
    end
    it 'should returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'should render New' do
      expect(response).to render_template(:new)
    end
  end
end
