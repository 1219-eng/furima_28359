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
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| birthday | date   | null: false |
| family_name | string | null: false |
| name     | string | null: false |
| phonetic_family name | string | null: false |
| phonetic_name | string | null: false |

### Association
has_many: items
has_many: comments

## item テーブル
| Column | Type   | Options     |
| -------- | ------ | ----------- |
|category             | string | null: false |
|price                | integer| null: false |
| exhibitor_user      | string | null: false |
| image               | string | null: false |
| text                | text   | null: false |
| commodity condition | string | null: false |
| daytime             | datetime | null: false |
| shipping origin     | string | null: false |
| shipping charges    | integer | null: false |

### Association
has_many: users
has_many: comments

## comments テーブル
| Column | Type   | Options     |
| --------| ------ | ----------- |
| text     | text      | null: false |

has_many: users
has_many: items

## street address
| Column | Type   | Options     |
| --------| ------ | ----------- |
| postal code      | string | null: false |
| city             | string | null: false |
| address          | string | null: false |
| building name    | string | null |
| phone number     | string | null: false |
### Association
has_one:item_purchases

## item_purchases
| Column | Type   | Options     |
| --------| ------ | ----------- |
| user     | references| null: false |
| item     | references| null: false |
### Association
has_one:street address

belongs_to_active_hash :prefectures

