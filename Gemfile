source 'https://rubygems.org'
ruby "2.7.7"

# гемы не обновляем, вылезут ошибки
# запрещен редирект на другие домены
# ассеты не видит
# пробблемы с созданием блоков в редакторе и хз очему не создает
# сохранение обхектов не работает без каких либо сообщений
# переход на новые библиотеки только точечно.

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '= 7.0.4.2'
gem 'puma', '6.0.2'
gem 'sidekiq', '<7'
gem 'rack'
gem 'delayed_job_active_record'
gem 'delayed_job_web'
gem 'daemons'

#добавлены из за книги
gem 'bootstrap-sass'
gem 'bcrypt'
gem 'rails-controller-testing'
gem 'sqlite3', '~> 1.6', '>= 1.6.7'
gem 'faker'
gem 'will_paginate', '~> 3.3'
gem 'bootstrap-will_paginate'
gem 'active_storage_validations', '0.8.2'



gem 'sass'
gem 'sass-rails'
gem 'terser'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'russian'

# Templates
gem 'slim-rails'

gem 'materialize-sass'

gem 'simpleidn'
gem 'dropzonejs-rails'

gem 'devise'
gem 'activeadmin', '~> 2.9'
gem 'inherited_resources', '~> 1.7'
# gem 'activeadmin', github: 'activeadmin/activeadmin'
# gem 'inherited_resources', github: 'activeadmin/inherited_resources'

gem 'activeadmin_addons'
gem 'simple_form'

gem 'tzinfo', group: :development
gem 'web-console', group: :development
gem 'listen', '~> 3.0.5', group: :development
gem 'spring' # он почему-то требуется на проде в кроне. в девелопмент не отправлять
gem 'spring-watcher-listen', group: :development
gem 'better_errors', group: :development
gem 'binding_of_caller', group: :development
gem 'pry', group: :development #Улучшение стилизации rails console
gem 'bullet', '~> 7.0', '>= 7.0.1', group: :development #Помогает искать плохие запросы в БД

gem 'capistrano'
gem 'capistrano-rvm'
gem 'capistrano3-puma', '~> 6.0.0.beta.1'
gem 'capistrano-sidekiq', '~> 2.3.0'
gem 'capistrano-rails'
gem 'capistrano-bundler'

gem 'importmap-rails'




group :production, :test do
  gem 'rails_12factor'
end

gem 'kaminari'
gem 'jquery-validation-rails'


gem 'whenever'

gem 'chartkick'

gem 'jquery-turbolinks'

gem 'groupdate'

gem 'rmagick', '4.2.5'
gem 'carrierwave', '~> 2.2.3'
gem 'aws-sdk-s3', '~> 1.143'
gem 'fog-aws', '~> 3.11', require: 'fog/aws'
gem 'mime-types'
gem 'mini_magick'
gem 'image_magick'


gem 'simple_token_authentication'
gem 'devise-token_authenticatable'

gem 'i18n'

gem 'omniauth-oauth2'
gem 'omniauth-vkontakte', '~>1.6.0'
gem 'vkontakte_api'

gem 'dotenv-rails', groups: [:development, :test]
gem 'recaptcha', require: 'recaptcha/rails'

gem 'materialize-form'

gem 'omniauth-facebook'

gem 'omniauth-apple'
gem 'jwt'

gem 'redis'

gem 'syntax-highlighter-rails'

# For url address
gem 'friendly_id'
gem 'babosa'

gem 'unix-crypt'

gem 'telegram-bot'

gem 'zeitwerk'

gem 'fcm'
gem 'geocoder'
gem "rdoc", '~> 4'
gem 'bindata'
gem 'byebug'

gem 'httparty'
gem 'yui-compressor'
gem 'rack-brotli'
gem 'net-ping'

gem 'puma_worker_killer'

gem "composite_primary_keys"
gem 'omniauth-yandex'

# для генерации pdf
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

# помогает записывать цифры прописью
gem 'numbers_and_words'

gem 'activerecord-import'# Для того что бы много записей за раз в бд вносить

# source 'https://rubygems.org'
# git_source(:github) { |repo| "https://github.com/#{repo}.git" }
# gem 'rails',
#     '7.0.0.0'
# gem 'puma',
#     '3.12.2'
# gem 'sass-rails', '5.1.0'
# #gem 'webpacker', '4.0.7'
# gem 'turbolinks', '5.2.0'
# gem 'jbuilder',
#     '2.9.1'
# gem 'bootsnap',
#     '1.4.5', require: false
# gem 'net-http'
# gem 'importmap-rails'
# group :development, :test do
#   gem 'sqlite3', '1.4.1'
#   gem 'byebug', '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
# end
# group :development do
#   gem 'web-console',
#       '4.0.1'
#   gem 'listen',
#       '3.1.5'
#   gem 'spring',
#       '2.1.0'
#   gem 'spring-watcher-listen', '2.0.1'
# end
# group :test do
#   gem 'capybara',
#       '3.28.0'
#   gem 'selenium-webdriver', '3.142.4'
#   gem 'webdrivers',
#       '4.1.2'
# end
# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]