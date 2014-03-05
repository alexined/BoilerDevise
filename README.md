# Boilerplate Readme 

This is un extremely basic Rails 4.0.3 application and Ruby 2.1, which includes:

Unicorn - web server

Postgress - database

Foreman - process management tool

Device - account manager

Bower - javascript package manager

## Installation

Install bundler if you haven't yet:

```
gem install bundler
```

Install the gems:

```
bundle install
```

This will install Rails 4.0.3, pg, foreman, unicorn and Devise gems.

bower install
```

This will install javascript packages 

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