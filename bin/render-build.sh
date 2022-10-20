#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
npm install
npm run build:css
bundle exec rake app:assets:precompile
bundle exec rake app:assets:clean
bundle exec rake db:migrate
