# frozen_string_literal: true

require 'swagger_helper'

describe 'Payout API :: Exception cases' do
  path '/api/v1/payouts' do
    post 'Calculate payout' do
      tags 'Exception Case: Empty Request'
      produces 'application/json'

      response 200, 'Returns default goals values' do
        it 'Returns "invalid request message"' do
          body = JSON(response.body.data)
          expect(body.count).to eq(4)
        end
      end

    end
  end
end

describe 'Payout API :: Expected cases' do
    path '/api/v1/payouts' do
      post 'Calculate payout' do
        tags 'Exception Case: Empty Request'
        produces 'application/json'
  
        response 200, 'Returns default goals values' do
          it 'Returns "invalid request message"' do
            body = JSON(response.body.data)
            expect(body.count).to eq(4)
          end
        end
  
      end
    end
end
