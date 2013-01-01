source 'http://rubygems.org'

gem 'rack'

gem "activesupport"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem "rails", "3.2.8", :require => 'rack'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails'
	gem 'coffee-rails'
	gem 'uglifier'
end

# Bundle for authentication system

#Devise authentication
gem 'devise'
#Omniauth (Opengraph protocol support)
gem 'oauth2'
gem 'omniauth-facebook'
gem 'omniauth-openid'
gem 'omniauth'

# Use Mongrel webserver for testing cause of OpenID problems in Webrick
# rails server mongrel
group :development, :test do
	gem 'mongrel', '1.2.0.pre2'
end

# Javascripts motors
gem 'execjs'
gem 'therubyracer'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end  comentario

group :development, :test do
	gem 'sqlite3', "~> 1.3.6"
	gem 'sqlite3-ruby', :require => 'sqlite3'
end