# Boilerplate Readme 

This is un extremely basic Rails 4.0 application and Ruby 2.0, which includes:

Unicorn - web server

Postgress - database

Foreman - process management tool

Device - 

## Installation

Install bundler if you haven't yet:

```
gem install bundler
```

Install the gems:

```
bundle install
```

This will install Rails 4.0.0, pg, foreman, unicorn and Devise gems.

Rake devise setup task:

```
rake devise:setup
```

This will:

* drop any existing database
* create a new database
* migrate the database
* create a default user and admin

##Run the application

Start the unicorn server

    foreman start


Enjoy!