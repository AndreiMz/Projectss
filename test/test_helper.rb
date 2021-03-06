ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
module ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    def sign_in(user:, password:)
      post user_session_path \
        'user[email]' => user.email,
        'user[password]' => password
    end
    # Add more helper methods to be used by all tests here...
  end
end
