ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def is_logged_in?
    !session[:user_id].nil?
  end

  def log_in_as(user, options = {})
    password    = options[:password]    || 'password'
    remember_me = options[:remember_me] || '1'
    if integration_test?
      post login_path, params:{session: { email:       user.email,
                                  password:    password,
                                  remember_me: remember_me }}
    else
      session[:user_id] = user.id
    end
  end

  def integration_test?
    respond_to?(:post)
  end
  # Add more helper methods to be used by all tests here...
end
