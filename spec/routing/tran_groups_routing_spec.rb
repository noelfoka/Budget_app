require 'rails_helper'

RSpec.describe TranGroupsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/tran_groups').to route_to('tran_groups#index')
    end

    it 'routes to #new' do
      expect(get: '/tran_groups/new').to route_to('tran_groups#new')
    end

    it 'routes to #show' do
      expect(get: '/tran_groups/1').to route_to('tran_groups#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/tran_groups/1/edit').to route_to('tran_groups#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/tran_groups').to route_to('tran_groups#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/tran_groups/1').to route_to('tran_groups#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/tran_groups/1').to route_to('tran_groups#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/tran_groups/1').to route_to('tran_groups#destroy', id: '1')
    end
  end
end
