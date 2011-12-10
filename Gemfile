source 'http://rubygems.org'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem "rails", "3.1.0"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails', "~> 3.1.0"
	gem 'coffee-rails', "~> 3.1.0"
	gem 'uglifier'
end

# Bundle for authentication system
#Devise authentication
gem 'devise'
#Omniauth (Opengraph protocol support)
gem 'omniauth'
#Facebook Opengraph support
gem 'oa-oauth', :require => 'omniauth'
#Google Pass Opengraph support
gem 'oa-openid', :require => 'omniauth/openid'

# Use Mongrel webserver for testing cause of OpenID problems in Webrick
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
	gem 'sqlite3'
	gem 'sqlite3-ruby', :require => 'sqlite3'
end