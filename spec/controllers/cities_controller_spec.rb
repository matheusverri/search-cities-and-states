# spec/controllers/cities_controller_spec.rb

require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #index' do
    let!(:city1) { City.create(name: 'New York', state: State.create(name: 'New York')) }
    let!(:city2) { City.create(name: 'Los Angeles', state: State.create(name: 'California')) }
    let!(:city3) { City.create(name: 'York', state: State.create(name: 'Pennsylvania')) }
    
    context 'when search parameter is present' do
      it 'returns cities that match the search term in their name' do
        get :index, params: { search: 'York' }
        expect(assigns(:cities)).to match_array([city1, city3])
      end

      it 'returns cities that belong to a state that matches the search term' do
        get :index, params: { search: 'California' }
        expect(assigns(:cities)).to match_array([city2])
      end

      it 'returns cities that match the search term case insensitively' do
        get :index, params: { search: 'new york' }
        expect(assigns(:cities)).to match_array([city1])
      end
    end

    context 'when search parameter is not present' do
      it 'returns all cities' do
        get :index
        expect(assigns(:cities)).to match_array([city1, city2, city3])
      end
    end
  end
end
