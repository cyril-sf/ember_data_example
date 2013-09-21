source 'http://rubygems.org'

gem 'rails', '3.2.9'
gem 'sqlite3'
gem 'strong_parameters'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'uglifier'
  gem 'anjlab-bootstrap-rails', '>= 2.1', :require => 'bootstrap-rails'
  gem 'therubyracer', :platforms => :ruby
end

gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem 'jquery-rails', '= 2.2.1'
gem 'ember-rails' #, git: 'git@github.com:Cyril-sf/ember-rails.git', ref: '682a41d79f'

group :test, :development do
  gem 'minitest'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'capybara'
  gem 'konacha'
  gem 'poltergeist'
end

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3'
end
