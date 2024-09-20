# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Setup
```sh
# docker compose run --no-deps web rails new . --force --database=postgresql --skip-action-mailbox --skip-action-text --skip-action-cable
docker compose build
docker compose up
docker compose run web bundle exec rails db:create

docker compose run web bundle install

# HACK: 「Error: Cannot find package '@babel/plugin-proposal-private-methods' imported from /myapp/babel-virtual-resolve-base.js」になっており、link_to method: deleteが効かなかった為、追加
docker compose run web bin/yarn add --dev @babel/plugin-proposal-private-methods
# HACK: コンソールログにエラー出ていた為、追加
docker compose run web bin/yarn add --dev @babel/plugin-proposal-private-property-in-object
```
