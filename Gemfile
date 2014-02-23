source 'https://rubygems.org'

ruby                                "2.1.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',                        '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg',						               	'0.17.0'

# Manage our processes
gem 'foreman',                      '0.63.0'

# Load env
gem "dotenv-rails"

# Use unicorn as the app server
gem 'unicorn',                      '4.6.3'

# Email service
gem 'sendgrid',                     '1.2.0'

# Error Reporting
gem 'airbrake'

# Notifications on deploys require flowdock gem
#gem "flowdock",                     "~> 0.3.1"
#gem "grit",                         "~> 2.5.0"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Redis
#gem 'redis',                        '3.0.4'
#gem 'hiredis',                      '0.4.5'

#A/B testing
#gem 'split', :require => 'split/dashboard'

# Use Devise for user authentication
gem 'devise'
# Social network authentication
#gem 'omniauth',                     '1.1.4'
#gem 'omniauth-facebook',            '1.4.1'
#gem 'omniauth-twitter',             '1.0.0'
#gem 'omniauth-google-oauth2',       '0.2.1'
#gem 'omniauth-linkedin',            '0.1'
#gem 'omniauth-tumblr',              '1.1'
#gem 'omniauth-reddit', :github => 'jackdempsey/omniauth-reddit'
#gem 'omniauth-eventbrite', :github => 'delight-labs/omniauth-eventbrite'
# Social networks
#gem 'twitter',                      '4.8.1'
#gem 'tumblr_client',                '0.8.2'
#gem 'google_plus',                  '0.2.2'
#gem 'linkedin'

# Image upload
gem 'carrierwave'
gem 'mini_magick'   # for image thumbnails
gem 'fog'           # for amazon S3 upload

#Admin interface
gem 'activeadmin', github: 'gregbell/active_admin'
#gem 'active_admin_sidebar'
#gem 'tinymce-rails', github: 'spohlenz/tinymce-rails'
#gem 'rails3-jquery-autocomplete', git: 'https://github.com/francisd/rails3-jquery-autocomplete'
#gem 'just-datetime-picker'

#Use backbone
gem "rails-backbone"

# Use SCSS for stylesheets
gem 'sass-rails',                   '~> 4.0.0'
gem 'codemirror-rails',             '3.16'
gem 'neat',                         '1.3.0'
gem 'bootstrap-sass-rails',         '3.0.0.2'
# Spriting
gem 'chunky_png',                   '1.2.8', require: false
gem 'sprite-factory',               '1.5.3', require: false

#Json views
gem 'rabl'

#Chef tools fordeployment 
gem 'amoeba_deploy_tools', git: 'https://github.com/AmoebaLabs/amoeba-deploy-tools' 

group :development do
  gem 'capistrano',                 '2.15.1'

  # Opens emails in browser
  gem 'letter_opener',              '1.1.2'
end

group :development, :test do
  gem 'factory_girl_rails',         '4.2.1'

  # Testing framework
  gem 'rspec-rails',                '~> 2.0'
  gem 'rspec',                      '~> 2.0'

  # XML-output for test reports (used by Jenkins)
  #gem 'ci_reporter',                '1.9.0'
  #Tests coverage
  #gem 'simplecov', :require => false
  #Test long queires rake task
  #gem 'eventmachine'
end

group :test do
  gem 'capybara',                   '2.1.0'
  gem 'capybara-webkit',            '1.1.0'
  gem 'database_cleaner'
  gem 'webmock',                    '1.13'
  gem 'vcr',                        '~> 2.6.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use debugger
# gem 'debugger', group: [:development, :test]

