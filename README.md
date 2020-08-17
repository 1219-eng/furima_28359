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
## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| birthday | string | null: false |
| card info| string | null: false |

### Association
has_many: items
has_many: comments

## item テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|item name | string | null: false |
|category  | string | null: false |
|price     | integer| null: false |
| exhibitor_user| string | null: false |
| image    | string | null: false |
| text     | string | null: false |

### Association
belongs_to: users
has_many: comments

## comments テーブル
| text     | string | null: false |
| user_id  | references| null: false |
| item_id  | references| null: false |

belongs_to: users
belongs_to: items

## purchase テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| user_id  | references| null: false |
| card info| string | null: false |

### Association
has_one: street address

## street address

