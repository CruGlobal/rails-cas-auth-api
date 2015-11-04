class ApplicationController < ActionController::API

  protected

  def render_error(message, options = {})
    render(
      json: CruLib::ApiError.new(message: message),
      status: options[:status] || :bad_request # 400
    )
  end
end
