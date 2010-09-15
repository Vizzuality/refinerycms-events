# Refinery CMS Events

An events plugin for [Refinery CMS](http://refinerycms.com/)

## Installation

Add the following line to your `Gemfile` file:

    gem 'refinerycms-events', '= 0.1', :require => 'events', :git => 'git://github.com/Vizzuality/refinerycms-events.git'

And then run `bundle install`.

Now you'll be able to use the generator `refinery_events`:

    script/rails generate refinery_events

This will create a migration and a `seeds` file.

Then run:

    rake db:migrate

And the plugin will be ready to use.

## Event model

An event is very simple:

  - `title` (_string_)
  - `description` (_text_)
  - `location` (_string_)
  - `from` (_datetime_)
  - `to` (_datetime_)

