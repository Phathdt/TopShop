source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.1'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'rack-cors'

gem 'jsonapi-serializer', '~> 2.1.0'
gem 'oj', '~> 3.10', '>= 3.10.17'
gem 'jsonapi.rb'
gem 'kaminari'

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'rubocop', '~> 1.6.1', require: false
  gem 'rubocop-rails', '~> 2.9.1'
  gem 'rufo', '~> 0.12.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
