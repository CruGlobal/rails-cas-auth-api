class ApplicationController < ActionController::API

  protected

  def redis_ticket_key(ticket)
    ['rails_cas_auth_client:service_ticket', ticket].join(':')
  end

  def render_error(message, options = {})
    render(
      json: CruLib::ApiError.new(message: message),
      status: options[:status] || :bad_request # 400
    )
  end
end
