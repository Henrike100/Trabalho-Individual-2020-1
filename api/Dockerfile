FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /usr/src/api
COPY Gemfile /usr/src/api/Gemfile
COPY Gemfile.lock /usr/src/api/Gemfile.lock

RUN gem update --system
RUN gem install bundler
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

COPY . /usr/src/api

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"]
