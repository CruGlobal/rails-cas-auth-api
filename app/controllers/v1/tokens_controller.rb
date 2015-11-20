module V1
  class TokensController < ApplicationController
    include CruLib::AccessTokenProtectedConcern

    before_action :authenticate_request, except: [:new]

    def new
      render_error "You must pass in a service ticket ('st' parameter)" and return if params[:st].blank?

      st = validate_service_ticket(params[:st])
      render_error 'Invalid service ticket' and return unless st.is_valid?

      access_token = generate_access_token(st)
      store_service_ticket(st, access_token)
      render json: access_token
    end

    def destroy
      CruLib::AccessToken.del(@access_token.token)
      render status: :ok, plain: 'OK'
    end

    protected

    # Validate Service Ticket
    def validate_service_ticket(ticket)
      st = CASClient::ServiceTicket.new(
        ticket,
        new_v1_token_url
      )
      RubyCAS::Filter.client.validate_service_ticket(st)
    end

    # Generate Access Token
    def generate_access_token(st)
      CruLib::AccessToken.new(
        key_guid: st.extra_attributes['ssoGuid'],
        email: st.user,
        first_name: st.extra_attributes['firstName'],
        last_name: st.extra_attributes['lastName']
      )
    end

    # Stores a Service Ticket to Access Token relationship
    # This is used to invalidate access tokens when CAS session expires
    def store_service_ticket(ticket, token)
      CruLib.redis_client.setex(redis_ticket_key(ticket), 2.hours.to_i, token.token)
    end
  end
end
