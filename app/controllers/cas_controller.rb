class CasController < ApplicationController
  def logout
    render_error 'POST method not supported' and return unless logout_request?
    ticket = service_ticket
    invalidate_ticket(ticket) if ticket
    render status: :ok, plain: 'OK'
  end

  def proxy_callback
    CruAuthLib.redis_client.setex(
      redis_pgt_iou_key(params[:pgtIou]), 30, params[:pgtId]
    ) unless params[:pgtId].blank? || params[:pgtIou].blank?
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
    token = CruAuthLib.redis_client.del(redis_ticket_key(ticket))
    CruAuthLib::AccessToken.del(token) if token
  end
end
