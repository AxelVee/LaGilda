source 'http://rubygems.org'

#ruby '1.9.2'
gem 'rails', '3.2.6' 
#'3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


#gem "sqlite3"


gem "heroku"
gem "engineyard"
#gem 'tlsmail' 
gem "geocoder"
gem "gmaps4rails"
gem "jquery-rails"
#gem "activeadmin"
gem "rake"
gem "devise"
gem "cancan"
gem "cucumber"
gem 'rails_admin'
gem 'gravatar_image_tag'
gem 'paperclip'
gem 'will_paginate'
#gem "meta_search",    '>= 1.1.0.pre'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'
group :production do
#gem 'thin'
 #gem "eventmachine", "1.0.0.beta.4.1"
#gem "eventmachine", "1.0.0.beta.4"
 #gem "eventmachine", "1.0.0.beta.2"
 #gem "pg"
gem "mysql2"

end
# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'
group :development do
  gem 'rspec-rails'
  gem 'annotate'
  gem 'sqlite3'

  gem "rspec-core"
  gem "spork","0.9.0"
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end
group :test do
  gem 'rspec-rails'
  gem 'webrat'
end
# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
