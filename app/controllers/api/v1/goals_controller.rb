# frozen_string_literal: true

DEFAULT_GOALS = [
  {
    nivel: 'A',
    expected: 5
  },
  {
    nivel: 'B',
    expected: 10
  },
  {
    nivel: 'C',
    expected: 15
  },
  {
    nivel: 'Cuauh',
    expected: 20
  }
].freeze

module Api
  module V1
    # Shows default values for goals
    class GoalsController < ApplicationController
      def index
        render(
          json: {
            data: DEFAULT_GOALS
          },
          status: :ok
        )
      end
    end
  end
end
