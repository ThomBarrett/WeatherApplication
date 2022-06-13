# README

Versions
* Ruby version: ruby-2.7.2
* Rails verison 6.1.6
  
Install Gems
* bundle install

Database creation:
* bundle exec rails db:create db:migrate 
    
  
Test
* Test database setup: bundle exec rails db:migrate RAILS_ENV=test
* Rspec: bundle exec rspec
* Cucumber: bundle exec cucumber
* Rubocop: bundle exec rubocop
* Rails Best Practices: bundle exec rails_best_practices

Run
* Run application: bundle exec rails s
* Then go to localhost:3000