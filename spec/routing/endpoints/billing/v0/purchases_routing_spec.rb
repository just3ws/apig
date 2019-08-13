# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Endpoints::Billing::V0::PurchasesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/endpoints/billing/v0/purchases').to route_to('endpoints/billing/v0/purchases#index')
    end

    it 'routes to #show' do
      expect(get: '/endpoints/billing/v0/purchases/1').to route_to('endpoints/billing/v0/purchases#show', id: '1')
    end
  end
end
