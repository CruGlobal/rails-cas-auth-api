source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "rails", "~> 5.2.3"
gem "active_model_serializers"
gem "puma", "~> 3.11"
gem "bootsnap", ">= 1.1.0", require: false
gem "newrelic_rpm"
gem "versionist"
gem "rack-cors", require: "rack/cors"
gem "rollbar"
gem "syslog-logger"
gem "oj"
gem "oj_mimic_json"
gem "ddtrace"

# rubyCAS
gem "rubycas-client-rails"

gem "cru-auth-lib", "~> 0.1.0"

gem "xml-simple", require: "xmlsimple"

group :development, :test do
  gem "brakeman"
  gem "bundler-audit"
  gem "dotenv-rails"
  gem "guard-rubocop"
  gem "guard-rspec"
  gem "rspec-rails"
  gem "spring"
  gem "standard"
  gem "pry-rails"
  gem "awesome_print"
end

group :test do
  gem "webmock"
  gem "simplecov", require: false
  gem "factory_girl_rails"
  gem "shoulda", require: false
  gem "rubocop"
  gem "fakeredis", require: "fakeredis/rspec"
  gem "coveralls", require: false
end
gem "lograge"
gem "ougai", "~> 1.7"
gem "dogstatsd-ruby"
