# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ruby ENV['CUSTOM_RUBY_VERSION'] || '1.9.3'

