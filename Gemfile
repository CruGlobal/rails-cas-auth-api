source 'https://rubygems.org'

gem 'rails-api'
gem 'active_model_serializers', git: 'git://github.com/rails-api/active_model_serializers.git'
gem 'puma'
gem 'newrelic_rpm'
gem 'versionist'
gem 'rack-cors', require: 'rack/cors'
gem 'rollbar'
gem 'silencer'
gem 'syslog-logger'
gem 'oj'
gem 'oj_mimic_json'

# rubyCAS
gem 'rubycas-client-rails'

gem 'cru_lib', '~> 0.0.3'

group :development, :test do
  gem 'dotenv-rails'
  gem 'guard-rubocop'
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'spring'
  gem 'pry-rails'
end

group :test do
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'factory_girl_rails'
  gem 'shoulda', require: false
  gem 'rubocop', '~> 0.34.0'
end
