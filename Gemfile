source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg'

# External auth with google
gem "omniauth-google-oauth2"

# HAML
gem 'haml-rails'

# fixin' them sprockets
gem 'sprockets_better_errors'

# openmoviedb stuff
gem 'themoviedb'

# styles 4 teh lazy
gem 'foundation-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  # db dump
  gem 'yaml_db', github: 'jetthoughts/yaml_db', ref: 'fb4b6bd7e12de3cffa93e0a298a1e5253d7e92ba'
  # reload all the things
  gem 'guard-livereload', require: false
  gem 'guard'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'rack-mini-profiler'
  gem 'bullet'
  gem 'travis'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'database_cleaner'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use thin
gem 'thin'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]
