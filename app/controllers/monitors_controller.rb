class MonitorsController < ApplicationController
  newrelic_ignore

  def lb
    render status: :ok, plain: 'OK'
  end

  def block
    sleep 10.seconds
    render status: :ok, plain: 'OK'
  end
end
