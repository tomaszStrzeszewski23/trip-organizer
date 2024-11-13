# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.5'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.8', '>= 7.0.8.6'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'pg', '~> 1.3'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# For building REST APIs
gem 'jbuilder'           # For rendering JSON responses
gem 'active_model_serializers', '~> 0.10.0' # For advanced JSON serialization

# Authorization
gem 'pundit'             # For authorization policies

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
#
# Rails GraphQL support
gem 'graphiql-rails', group: :development # Interactive GraphQL editor
gem 'graphql', '~> 2.0'
gem 'graphql-batch' # For batch loading to avoid N+1 queries

# JSON Web Token (JWT) Authentication
gem 'devise'             # For user authentication
gem 'devise-jwt'         # For JWT token support with Devise

# CORS support for cross-origin requests
gem 'rack-cors'

# Background jobs (useful for async GraphQL mutations)
gem 'sidekiq'            # For background job processing
gem 'sidekiq-cron'       # For scheduled jobs (if needed)

# File uploads (if needed)
gem 'carrierwave'        # For handling file uploads
gem 'mini_magick'        # For image processing

# Miscellaneous
gem 'dotenv-rails', groups: [:development, :test] # For environment variables
gem 'pry-rails', group: :development # For better debugging in the console

group :development, :test do
  gem 'rspec-rails'      # Testing framework
  gem 'factory_bot_rails' # Test data generation
  gem 'faker'            # For generating fake data
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  # gem "capybara"
  gem 'selenium-webdriver'
end
