# coding: utf-8
ruby '~> 2.3.0'
if ENV['USE_OFFICIAL_GEM_SOURCE']
  source 'https://rubygems.org'
else
  source 'https://gems.ruby-china.org'
end

gem 'rails', '~> 4.1.5'
gem 'mysql2', '~> 0.3.21'
gem 'coffee-rails', '4.0.0'
gem 'jquery-rails', '3.1.1'

gem 'uglifier', '2.5.1'
gem 'sass-rails', '4.0.3'
gem 'bootstrap-sass', '3.2.0.1'
gem 'font-awesome-rails', '4.1.0'
gem 'yui-compressor', '0.12.0', require: false

gem 'turbolinks', '2.5.3'
gem 'jquery-turbolinks', '2.1.0'
gem 'nprogress-rails', '~> 0.1.6.7'

gem 'devise', '3.3.0'
gem 'devise-i18n', '0.11.0'
gem 'devise-async', '0.9.0'

gem 'friendly_id', '5.0.4'
gem 'simple_form', '3.1.0.rc2'
gem 'paranoia', '2.0.2'
gem 'browser', '~> 0.6.0'

gem 'bugsnag', '2.4.1'
gem 'whenever', '0.9.2', require: false
gem 'nokogiri', '~> 1.8.1', require: false

gem 'rails-i18n', '4.0.2'
gem 'rails_config', '0.4.2'
gem 'kaminari', '0.16.1'
gem 'activeadmin', '1.0.0.pre', github: 'gregbell/active_admin'
gem 'simple_captcha', '0.1.6', github: 'galetahub/simple-captcha'

gem 'ckeditor', '4.0.11'
gem 'non-stupid-digest-assets', '1.0.4'
gem 'carrierwave', '0.10.0'
gem 'qiniu-rs', '3.4.10'
gem 'mini_magick', '3.8.0'
gem 'carrierwave-qiniu', '0.1.3'

gem 'daemons', '1.1.9'
gem 'sidekiq', '3.2.5'
gem 'sinatra', '1.4.5', require: false

gem 'redis-rails', '4.0.0'
gem 'redis-namespace', '1.4.1'
gem 'redis-store', '1.1.4'

gem 'puma', '~> 3.11.0'

group :production do
  gem 'oneapm_rpm', '~> 1.3.5'
end

group :development, :test do
  gem 'rspec-rails', '3.0.0'
  gem 'rspec-expectations', '3.0.0'
  gem 'rspec-example_steps', '3.0.2', require: false

  gem 'capybara', '2.4.3'
  gem 'database_cleaner', '1.3.0'
  gem 'factory_girl_rails', '4.4.1'
  gem 'watir-webdriver', '0.6.11', require: false

  gem 'byebug', '3.2.0'
  gem 'yard', '~> 0.8.7'
  gem 'better_errors', '1.1.0'
  gem 'binding_of_caller', '0.7.2'

  gem 'hirb', '0.7.2'
  gem 'rails_best_practices', '1.15.4'
  gem 'simplecov', '0.9.0', require: false
  gem 'coveralls', '0.7.1', require: false

  gem 'capistrano', '3.7.0'
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm'
  gem 'capistrano-sidekiq'
  gem 'capistrano3-puma'
  gem 'sshkit-sudo'
end
