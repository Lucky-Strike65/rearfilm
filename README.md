# README

## usersテーブル

| Column            | Type     | Options        |
|-------------------|----------|----------------|
| nickname          | string   | null: false    |
| email             | string   | null: false    |
| encrypted_password| string   | null: false    |

### Association

-has_many :reviews
-has_many :favorites
-has_many :comments

## reviewsテーブル

| Column            | Type        | Options                         |
|-------------------|-------------|---------------------------------|
| user              | references  | null: false, foreign_key: true  |
| title             | text        | null: false                     |
| category_id       | integer     | null: false                     |
| text              | text        | null: false                     |

### Association

-belongs_to :user
-has_many   :comments
-has_many   :favorites

## commentsテーブル

| Column            | Type        | Options                         |
|-------------------|-------------|---------------------------------|
| user              | references  | null: false, foreign_key: true  |
| review            | references  | null: false, foreign_key: true  |
| text              | text        | null: false                     |

### Association

-has_many :user
-has_many :review

## favoritesテーブル

| Column            | Type        | Options                         |
|-------------------|-------------|---------------------------------|
| user              | references  | null: false, foreign_key: true  |
| review            | references  | null: false, foreign_key: true  |

### Association

-belongs_to :user
-belongs_to :review