source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "bootsnap", require: false
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "devise"
gem "devise_token_auth"
gem "activestorage"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails", "~> 6.0.0"
  gem "standard", "~> 1.22", ">= 1.22.1"
  gem "factory_bot_rails"
  gem "faker"
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "overcommit", "~> 0.60.0"
end

group :test do
  gem "shoulda-matchers", "~> 5.0"
end
