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
has_many: item_purchases

## item テーブル
| Column | Type   | Options     |
| -------- | ------ | ----------- |
|category_id          | integer | null: false |
|price                | integer| null: false |
| exhibitor_user      | string | null: false |
| image               | string | null: false |
| text                | text   | null: false |
| commodity_condition_id | integer | null: false |
| daytime_id          | integer | null: false |
| shipping_origin_id  | integer | null: false |
| shipping_charges_id | integer | null: false |

### Association
has_many: users
has_many: comments
has_many: item_purchases

## comments テーブル
| Column | Type   | Options     |
| --------| ------ | ----------- |
| text     | text      | null: false |

has_many: users
has_many: items

## street address
| Column | Type   | Options     |
| --------| ------ | ----------- |
| postal_code      | string | null: false |
| prefectures_id   | integer | null: false |
| city             | string | null: false |
| address          | string | null: false |
| building_name    | string | null |
| phone_number     | string | null: false |
### Association
has_many:item_purchases

## item_purchases
| Column | Type   | Options     |
| --------| ------ | ----------- |
| user     | references| null: false |
| item     | references| null: false |
### Association
has_one:street address



