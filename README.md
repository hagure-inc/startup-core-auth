## System
- Ruby 2.3.0
- Rails 5.0.0
- DB postgresql

__NOTE__
This project was upgraded from Rails 4.2.6 to 5.0.0.
- ActionCable is not installed as I thought ActionCable was not essential for every project.
- The default development server or Rails 5.0. is Puma but this project still uses WEBrick.


## Added Gems
```ruby
# Administration Framework
gem 'activeadmin', github: 'activeadmin'

# Authorization
gem 'devise'

# Configuration
gem 'settingslogic'

# Use slim for templates
gem 'slim-rails'

# Decorator
gem 'active_decorator'

# User-friendly URL
gem 'friendly_id'

# I18n
gem 'i18n_generators'

# Paginate
gem 'kaminari'

# SEO
gem 'meta-tags', :require => 'meta_tags'
gem 'sitemap_generator'

# Load jquery from CDN
gem 'jquery-rails-cdn'

# Test tools
group :development, :test do
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_girl_rails'
end
```

## Getting Started
### Instalation
``` 
$ git clone https://github.com/hagure-inc/startup-core-auth.git DIR_NAME
$ bundle install
```

### Setup Database
#### Change database settings
Current database settings is as below. You may change the database name, username and password as needed.

```yml
# config/database.yml
development:
  <<: *default
  host: localhost
  database: pj_development
  username: <%= ENV['RAILS_DATABASE_USERNAME'] %>
```

#### Set Environment Variable
Set your database username to the environment variable RAILS_DATABASE_USERNAME, If you would like to use it.
Add the line below to $User/.bash_profile and restart PC.
```
export RAILS_DATABASE_USERNAME="YOUR POSTGRES USERNAME"
```

#### Create DB
```
$ rake db:create
$ rake db:migrate
```

#### Create Admin User
```
$ rails c
irb(main):001:0> AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
```

## Already Setup
### Settingslogic
https://github.com/settingslogic/settingslogic
- Use config/application.yml as the settings file


### I18n
https://github.com/amatsuda/i18n_generators
- Set Japanese as default language and created Japanese locale files under /config/locales


### Devise
https://github.com/plataformatec/devise
- Created User
- Changed view templates from .erb to .slim
- Created Japanese messages for devise at /config/locales/devise.ja.yml, devise.meta.ja.yml, devise.view.ja.yml
- *NOTE* You need to configure email settings to send confirmation/password_reset/unlock emails

### ActiveAdmin
http://activeadmin.info/index.html
- Created AdminUser
- Registered User Model

### Slim
https://github.com/slim-template/slim-rails
- Use Slim as a template engine


### meta-tags
https://github.com/kpumuk/meta-tags
- Set default meta tags

Detailed setup information(in Japanese):  
http://qiita.com/tomomomo1217/items/912afba852dc524d748e

### jquery-rails-cdn
https://github.com/kenn/jquery-rails-cdn
- Load jquery from google CDN


## Other Gems
These gems are not especially configured. 
```ruby
gem 'active_decorator' # Decorator
gem 'kaminari' # Paginate
gem 'sitemap_generator' # SEO
# Test tools
group :development, :test do 
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_girl_rails'
end
```

## Other Changes
- Asset pipeline settings are done
- .gitignore is modified in order not to include .idea and some other files
