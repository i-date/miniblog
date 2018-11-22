# README

## Database setting
### usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|text|null: false, unique: true|

#### Association
- has_many :articles

### articlesテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|body|text|null: false|
|user_id|references|null: false, foreign_key: true|

#### Association
- belongs_to :user
