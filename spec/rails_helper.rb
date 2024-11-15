# frozen_string_literal: true

# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

require 'rspec/rails'
require 'factory_bot_rails'
require 'faker'
require 'shoulda/matchers'
require 'test_prof/recipes/rspec/let_it_be'

# Require supporting files from spec/support and its subdirectories
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

# Check for pending migrations and apply them before tests are run.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

# Shoulda Matchers Configuration
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

RSpec.configure do |config|
  # Include FactoryBot methods for easier syntax
  config.include FactoryBot::Syntax::Methods

  # Include Shoulda Matchers helpers for easier validation testing
  config.include Shoulda::Matchers::ActiveModel, type: :model
  config.include Shoulda::Matchers::ActiveRecord, type: :model

  # If you're using Devise, uncomment the following lines
  # config.include Devise::Test::ControllerHelpers, type: :controller
  # config.include Devise::Test::IntegrationHelpers, type: :request

  # Faker setup for generating random test data
  Faker::Config.random = Random.new(config.seed)

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Use transactional fixtures
  config.use_transactional_fixtures = true

  # Automatically infer test types based on file location (e.g., models, controllers, etc.)
  config.infer_spec_type_from_file_location!

  # Filter Rails backtrace from RSpec output
  config.filter_rails_from_backtrace!

  # Enable focused tests using `fit`, `fdescribe`, etc.
  config.filter_run_when_matching :focus

  # Configure expectations and mock behavior
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Randomize the order of tests to surface order dependencies
  config.order = :random
  Kernel.srand config.seed
end

# Capybara configuration (if needed for system tests)
RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :selenium, using: :chrome_headless, screen_size: [1400, 900]
  end
end
