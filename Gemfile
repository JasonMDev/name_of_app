# GEMFILE
# => $ bundle install --without production

source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails',                    '5.0.1'
#gem 'bcrypt',                  '3.1.11'
gem 'sass-rails',               '5.0.6'
gem 'uglifier',                 '3.0.0'
gem 'coffee-rails',             '4.2.1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder',                 '2.4.1'
gem 'will_paginate',            '3.1.0'
gem 'bootstrap-will_paginate',  '0.0.10'
gem 'bootstrap-sass',           '3.3.6'
gem 'sdoc',                     '0.4.1', group: :doc
gem 'puma',                     '3.4.0'

# Custom Gems
gem 'devise'
gem 'cancancan'
gem 'stripe'
gem 'brakeman', :require => false
gem 'angularjs-rails'
gem 'redis-rails'
gem 'newrelic_rpm'
gem 'font-awesome-rails'

# Development/Test Environment
group :development, :test do
  gem 'sqlite3',                  '1.3.11'
  gem 'byebug',                   '9.0.0', platform: :mri  #
  gem 'rspec-rails',           '~> 3.5'
  gem 'factory_girl_rails'
  gem 'guard',                    '2.13.0'
  gem 'guard-rspec', require: false
  #gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-spork'
end

# Development Environment
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console',              '3.1.1'
  gem 'listen',                   '3.0.8'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring',                   '1.7.2'
  gem 'spring-watcher-listen',    '2.0.0'
end

# Test Environment
group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters',       '1.1.9'
  gem 'guard-minitest',           '2.4.4'
end

# Production Environment
group :production do
  gem 'pg',             		      '0.18.4'
  # gem 'rails_12factor'
  gem 'memcachier',            '~> 0.0.2'
  gem 'dalli', '~> 2.7',       '>= 2.7.6'
  gem 'connection_pool',       '~> 2.2'
  gem 'redis'
end
