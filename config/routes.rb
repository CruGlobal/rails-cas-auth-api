Rails.application.routes.draw do
  get 'monitors/lb'
  api_version(module: 'V1', path: { value: 'v1' }) do
    resource :token, only: [:new, :destroy]
    resource :service, only: [:show]
  end

  # CAS Proxy Callback
  get 'proxy_callback', to: 'cas#proxy_callback'

  # Catch all POST requests for CAS Single Sign Out callback
  post '*path', to: 'cas#logout', as: 'logout'
end
