source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.13'
# gem 'gon'
gem 'tire'
# gem 'yajl'
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'zurb-foundation'
  gem 'uglifier', '>= 1.0.3'
end

group :production, :staging do
  gem "pg"
end

group :development, :test do
  gem "sqlite3", :require => "sqlite3"
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platforms => :ruby

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
