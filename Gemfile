source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'thin'

# UI Frameworks
gem 'haml', '>= 3.1.4'
gem 'sass-rails', '~> 3.2.3'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 2.0.0', git: 'https://github.com/thomas-mcdonald/bootstrap-sass.git', branch: '2.0'

# UI Helpers
gem 'simple_form'
gem 'show_for'
gem 'kaminari'

# Data Storage
gem 'redis'

# Controller Helpers
gem 'inherited_resources'

# Security
gem 'devise', '~> 2.0.0'

# Admin
gem 'activeadmin'
gem 'meta_search', '>= 1.1.0.pre'

# Feature control
gem 'rollout'
#gem 'degrade'

# External APIs
gem 'ruby-trello', git: 'https://github.com/jeremytregunna/ruby-trello.git'
gem 'stripe', git: 'https://github.com/stripe/stripe-ruby'
# Sunnytrail, GET to https://i.thesunnytrail.com/api?api_key=BPVLbhXSXg&source=rest&email=EMAIL

group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.8.1'
  gem 'sqlite3'
  gem 'foreman'
end

group :production do
  gem 'pg'
end
