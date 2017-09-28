# README
[![Build Status](https://semaphoreci.com/api/v1/fybwid/digro/branches/master/badge.svg)](https://semaphoreci.com/fybwid/digro)
[![Build Status](https://travis-ci.org/fybwid/digro.svg?branch=master)](https://travis-ci.org/fybwid/digro)
[ ![Codeship Status for fybwid/digro](https://app.codeship.com/projects/70907120-863c-0135-929f-46ca0532533c/status?branch=master)](https://app.codeship.com/projects/248092)
[![Coverage Status](https://coveralls.io/repos/github/fybwid/digro/badge.svg?branch=master)](https://coveralls.io/github/fybwid/digro?branch=master)

## Prerequisites
* Ruby: 2.4.0p0
* Rails: 5.1.4
* PostgreSQL: 9.3

## Prepared Rails for BDD
### Skip unit test, bundle and used PostgreSQL
```
rails new rails-bdd -T --skip-test-unit, -B --skip-bundle, -d postgresql
```

### Install gem locally
```bash
bundle install --path vendor/bundle
```

### Add Rspec Rails gem to Gemfile
```bash
group :development, :test do
  gem 'rspec-rails'
end
```
#### Install Rspec Rails gem
```bash
bundle
```
#### Bootstrap the application with RSpec
```bash
bundle exec rails generate rspec:install
```
### Add Shoulda Matchers gem to Gemfile
```bash
group :test do
  gem 'shoulda-matchers'
end
```
#### Configure Shoulda Matchers gem
Add the following block to the end of `spec/rails_helper.rb`
```bash
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```
### Added Cucumber gem
```bash
group :test do
  gem 'shoulda-matchers'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end
```
#### Install Cucumber gem
```bash
bundle
```
### Bootstrap the application with Cucumber
```bash
rails generate cucumber:install
```

## Testing
### Running all test (RSpec and Cucumber)
`bundle exec rake ci:tests`
### RSpec
#### Single test
`rspec spec/models/post_spec.rb`
#### All test
`rspec`

### RSpec
#### Single test
`cucumber features/home_page.feature`
#### All test
`cucumber`
* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...