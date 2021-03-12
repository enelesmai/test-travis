# frozen_string_literal: true
module Api
  module V1
    # Endpoint to calculate payouts given a list of players with/without categories configuration
    class PayoutsController < ApplicationController
        include Defaults 
        include Response

        def calculate

            #if(params.empty?) json_response({message:"No params received"},:not_found)

            #Validate receiving empty values
            param! :jugadores, Array, required: true do |j|
                j.param! :nombre, String, blank: false
                j.param! :nivel, String, blank: false
                j.param! :goles, Integer, required: true
                j.param! :sueldo, Float, required: true
                j.param! :bono, Float, required: true
                j.param! :sueldo_completo, Float, required: false
                j.param! :equipo, String, blank: false
            end

            param! :configuracion, Array do |c|
                c.param! :nivel, String, blank: false
                c.param! :meta, Integer, required: true
            end

            #DO CALCULATIONS
            json_response(SAMPLE_RESPONSE)
        end

    end
  end
end
