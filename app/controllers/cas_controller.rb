class CasController < ApplicationController

  def logout
    render_error 'POST method not supported' and return unless logout_request?
    ticket = service_ticket
    invalidate_ticket(ticket) if ticket
    render status: :ok, plain: 'OK'
  end

  private

  def logout_request?
    # Test if current request is CAS logout request
    request.request_method_symbol == :post && params.key?(:logoutRequest)
  end

  def service_ticket
    xml = XmlSimple.xml_in(params[:logoutRequest])
    xml['SessionIndex'][0]
  rescue
    nil
  end

  def invalidate_ticket(ticket)
    token = CruLib.redis_client.del(redis_ticket_key(ticket))
    CruLib::AccessToken.del(token) if token
  end
end
