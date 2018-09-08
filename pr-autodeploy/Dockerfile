FROM ruby:alpine

RUN apk add git
RUN apk add bash

COPY Gemfile ./
RUN bundle install
COPY pr_autodeploy.rb /pr_autodeploy.rb

COPY run.sh /run.sh
CMD ["/run.sh"]