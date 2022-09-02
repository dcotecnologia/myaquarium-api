# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.18"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors", "~> 1.1"

# Authentication library
gem "devise-jwt", "~> 0.9"
gem "omniauth", "~> 2.1"

# Organize secrets and env vars
gem "confset", github: "dcotecnologia/confset", branch: "4-getting-indexerror-when-env-has-not-tracked-keys"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "brakeman"
  gem "bundler-audit", "~> 0.9"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rubocop", "~> 1.36.0", require: false
  gem "rubocop-minitest", "~> 0.20.0"
  gem "rubocop-packaging", "~> 0.5.1"
  gem "rubocop-performance", "~> 1.14.2"
  gem "rubocop-rails", "~> 2.14.2"
  gem "rubocop-rake", "~> 0.6.0"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "dotenv-rails", "~> 2.1", ">= 2.1.1", require: "dotenv/rails-now"
end
