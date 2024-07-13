# README

## To run application

`bundle exec rails s`

## Cloud Development

This repository is developed using AWS Cloud 9 Ubuntu servers.

The first 12 months (for select services) are free and you can set up cost alerts to manage usage.

## Security

As of Rails 5.2, encrypted credentials are used instead of secrets.

To edit the credentials, run the following in the command line:

`EDITOR=vim rails credentials:edit`

Press `i` to edit, then `ESC` and `:wq:` to save when done.

The first time you edit, a master key is created.

`/config/master.key` should never be committed, and it is set to ignore in `.gitignore`

## Credentials

`stripe_secret_key =` the secret key found at dashboard.stripe.com/test/dashboard

To view credentials (when the master.key file matches the credentials.yml.enc file), run

`rails c`

`Rails.application.credentials`

Or `Rails.application.credentials.stripe_secret_key`

## Callbacks

`after_create` is a callback that runs once, when the record is first created. This is implemented in the user model to create a Stripe account using the user's email.

## Database

This application is using sqlite3

The "posts" database table is created by initializing a Rails Migration:

`rails g migration create_posts`

Then edit the migration found in db/migrate (a timestamp is automatically generated in the file name)

Finally, run the migration:

`rails db:migrate`

The schema.db will be automatically generated. Any changes made directly to the schema.db will be lost.

After the first migration, you can check the status of migrations using:

`rails db:migrate:status`

## Fixtures

Fixtures are used as test data in the specs as per
https://api.rubyonrails.org/classes/ActiveRecord/FixtureSet.html

## Authentication

Authentication in this app is done with the Gem 'devise' following [this tutorial](https://dev.to/ahmadraza/authentication-using-devise-in-rails-7-3dn0#:~:text=Next%2C%20let%27s%20add%20the%20Devise%20gem%20to%20our,your%20terminal%20to%20install%20the%20gem%3A%20bundle%20install)