FROM ruby:3.2-rc

ENV GEM_HOME=/usr/local/lib/ruby/gems/3.2.0+1

ENV TZ="America/Sao_Paulo"

WORKDIR /src

RUN gem uninstall -aIx

RUN gem install bundler

RUN gem install foreman

COPY ./src/Gemfile /src/Gemfile

COPY ./src/Gemfile.lock /src/Gemfile.lock

# Configure the main process to run when running the image

RUN bundle config mirror.https://rubygems.org http://rubygems.org

RUN bundle install --full-index --jobs 4 --retry 3

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
