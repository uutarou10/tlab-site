#!/bin/sh
set -eu

export SECRET_KEY_BASE=$(bundle exec rails secret)

bundle exec rails db:create RAILS_ENV=production
bundle exec rails db:migrate RAILS_ENV=production

exec budnle exec rails s -e production -b 0.0.0.0