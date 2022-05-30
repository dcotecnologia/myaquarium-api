FROM ruby:3.1.2

ENV GEM_HOME=/usr/local/lib/ruby/gems/3.1.0

ENV TZ="America/Sao_Paulo"

WORKDIR /app

RUN gem update --system

RUN gem uninstall -aIx

RUN gem install foreman

COPY ./Gemfile /app/Gemfile

RUN bundle install --full-index --jobs 4 --retry 3

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
