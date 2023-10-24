# README

## usersテーブル
|Column            |Type      |Options                       |
|nickname          |string    |null: false                   |
|email             |string    |null: false, unique: true     |
|encrypted_password|string    |null: false, unique: true     |
|last_name         |string    |null: false                   |
|first_name        |string    |null: false                   |
|last_name_kana    |string    |null: false                   |
|first_name_kana   |string    |null: false                   |
|birthday          |string    |null: false                   |
### Association
has_many :items
has_many :orders


## itemsテーブル
|Column            |Type      |Options                       |
|user_id           |references|null: false, foreign_key: true|
|image             |string    |null: false                   |
|name              |string    |null: false                   |
|description       |string    |null: false                   |
|price             |string    |null: false                   |
### Association
belongs_to :user
has_one :order


## ordersテーブル
|Column            |Type      |Options                       |
|user_id           |references|null: false, foreign_key: true|
|item_id           |references|null: false, foreign_key: true|
### Association
belongs_to :user
belongs_to :item


## paymentsテーブル
|Column            |Type      |Options                       |
|order_id          |references|null: false, foreign_key: true|
|postcode          |string    |null: false                   |
|prefecture        |string    |null: false                   |
|city              |string    |null: false                   |
|block             |string    |null: false                   |
|building          |string    |null: false                   |
|phone_number      |string    |null: false                   |
### Association
belongs_to :order