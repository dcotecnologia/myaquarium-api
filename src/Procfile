web: rm -f tmp/pids/server.pid && bin/rails server -p $PORT -e $RAILS_ENV -b 0.0.0.0
# worker: bundle exec sidekiq -L log/sidekiq.log -C config/sidekiq.yml -e $RAILS_ENV
release: bin/rails db:create db:migrate
