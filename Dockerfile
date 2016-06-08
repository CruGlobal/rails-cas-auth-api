FROM cruglobal/base-image-ruby:latest
MAINTAINER cru.org <wmd@cru.org>

COPY docker/nginx-httpd.conf /usr/local/openresty/nginx/conf.d/webapp.conf
COPY docker/puma_app.rb /etc/puma_app.rb
COPY docker/puma_callback.rb /etc/puma_callback.rb
COPY docker/supervisord-*.conf /etc/supervisor/conf.d/
