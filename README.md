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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|varchar|null: false|unique: true|
|e-mail|varchar|unique: true|

### Association
has_many :comments
has_many :posts

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_id|references|foreign_key: true|null: false|
|place_id|reference|foreign_key: true|null: false|
|user_id|reference|foreign_key: true|null: false|
|image|text|unique: true|
|content|text|

### Association
has_many :post_tags
belongs_to :category
belongs_to :place
belongs_to :user

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference|foreign_key: true|null: false|
|post_id|reference|foreign_key: true|null: false|
|body|text|
|rate|integer|

### Association
belongs_to :user
belongs_to :post

##categories

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### Association
has_many :posts

##places

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### Association
has_many :posts

##post_tags

|Column|Type|Options|
|------|----|-------|
|tag_id|reference|foreign_key: true|null: false|
|post_id|reference|foreign_key: true|null: false|

### Association
has_many :tags
belongs_to :post

##places

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### Association
belongs_to :post_tag