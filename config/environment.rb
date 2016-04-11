# Load the Rails application.
require File.expand_path('../application', __FILE__)
#config.gem 'i18n-js'
# Initialize the Rails application.
Rails.application.initialize!
Rails.application.routes.default_url_options[:host] = 'rails-exam.heroku.com'
