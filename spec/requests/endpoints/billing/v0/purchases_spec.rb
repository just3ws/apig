# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Endpoints::Billing::V0::Purchases', type: :request do
  describe 'GET /endpoints/billing/v0/purchases' do
    it 'works! (now write some real specs)' do
      get(endpoints_billing_v0_purchases_path)
      expect(response).to have_http_status(:ok)
    end
  end
end
