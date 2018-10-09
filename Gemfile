source 'https://rubygems.org'

gem 'rails-api'
gem 'rails', '4.2.10'
gem 'active_model_serializers', git: 'https://github.com/rails-api/active_model_serializers.git', ref: '7d4f0c5c'
gem 'puma'
gem 'newrelic_rpm'
gem 'rails-api-newrelic'
gem 'versionist'
gem 'rack-cors', require: 'rack/cors'
gem 'rollbar'
gem 'syslog-logger'
gem 'oj'
gem 'oj_mimic_json'
gem 'ddtrace'

# rubyCAS
gem 'rubycas-client-rails'

gem 'cru-auth-lib', '~> 0.1.0'

gem 'xml-simple', require: 'xmlsimple'

group :development, :test do
  gem 'dotenv-rails'
  gem 'guard-rubocop'
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'spring'
  gem 'pry-rails'
  gem 'awesome_print'
end

group :test do
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'factory_girl_rails'
  gem 'shoulda', require: false
  gem 'rubocop'
  gem 'fakeredis', :require => 'fakeredis/rspec'
  gem 'coveralls', require: false
end
