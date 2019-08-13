# frozen_string_literal: true

require 'rails_helper'

module Endpoints
  module Billing
    module V0
      RSpec.describe PurchasesController, type: :controller do
        let(:valid_session) { {} }

        describe 'GET #index' do
          it 'returns a success response' do
            get(:index, params: {}, session: valid_session)
            expect(response).to be_successful
          end
        end

        describe 'GET #show' do
          it 'returns a success response' do
            get(:show, params: { id: 1 }, session: valid_session)
            expect(response).to be_successful
          end
        end
      end
    end
  end
end
