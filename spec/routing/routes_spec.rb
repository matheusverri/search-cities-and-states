# spec/routing/routes_spec.rb

require 'rails_helper'

RSpec.describe 'Routing to Cities', type: :routing do
  it 'routes GET /cities to cities#index' do
    expect(get: '/cities').to route_to(
      controller: 'cities',
      action: 'index'
    )
  end
end
