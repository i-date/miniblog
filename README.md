# Database setting
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|

### Association
- has_many :articles

## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|body|text|null: false|
|user_id|bigint|null: false|

### Association
- belongs_to :user
