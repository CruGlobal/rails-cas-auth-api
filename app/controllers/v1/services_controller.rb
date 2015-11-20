module V1
  class ServicesController < ApplicationController
    include CruLib::AccessTokenProtectedConcern

    def show
      render json: ServiceUrl.new(url: new_v1_token_url)
    end
  end
end
