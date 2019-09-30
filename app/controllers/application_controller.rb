class ApplicationController < ActionController::API
  force_ssl(if: :ssl_configured?, except: :lb)

  protected

  def redis_ticket_key(ticket)
    ["rails_cas_auth_client", "service_ticket", ticket].join(":")
  end

  def redis_pgt_iou_key(pgt_iou)
    ["rails_cas_auth_client", "pgt_iou", pgt_iou].join(":")
  end

  def render_error(message, options = {})
    render(
      json: CruAuthLib::ApiError.new(message: message),
      status: options[:status] || :bad_request # 400
    )
  end

  def ssl_configured?
    request.get? && !Rails.env.development? && !Rails.env.test?
  end
end
