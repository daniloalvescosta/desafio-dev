# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.7'
gem 'redis', '~> 4.0'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :test, :development do
  gem 'factory_bot_rails'
  gem 'faker', '~> 2.18'
  gem 'pry'
  gem 'rspec-rails', '4.0.1'
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  gem 'rubocop', '~> 1.56'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'solargraph', '~> 0.49.0'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
