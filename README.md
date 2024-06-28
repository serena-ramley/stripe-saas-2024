# README

## Cloud Development

This repository is developed using AWS Cloud 9 Ubuntu servers.

The first 12 months (for select services) are free and you can set up cost alerts to manage usage.

## Security

As of Rails 5.2, encrypted credentials are used instead of secrets.

To edit the credentials, run the following in the command line:

`EDITOR=vim rails credentials:edit`

Press `i` to edit, then `ESC` and `:wq:` to save when done.

The first time you edit, a master key is created.

## Credentials

`stripe_secret_key =` the secret key found at dashboard.stripe.com/test/dashboard
