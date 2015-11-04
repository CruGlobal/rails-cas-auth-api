module V1
  class ServicesController < ApplicationController
    def show
      render json: { service: v1_service_url }
    end
  end
end