FROM 056154071827.dkr.ecr.us-east-1.amazonaws.com/base-image-ruby-version-arg:2.3.1
MAINTAINER cru.org <wmd@cru.org>

COPY docker/nginx-httpd.conf /usr/local/openresty/nginx/conf.d/webapp.conf
COPY docker/puma_app.rb /etc/puma_app.rb
COPY docker/puma_callback.rb /etc/puma_callback.rb
COPY docker/supervisord-*.conf /etc/supervisor/conf.d/
