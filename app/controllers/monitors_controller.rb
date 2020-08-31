class MonitorsController < ApplicationController
  def lb
    render status: :ok, plain: "OK"
  end
end
