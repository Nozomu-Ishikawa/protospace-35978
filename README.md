# テーブル設計

## users テーブル

| Column                  | Type   | Options     |
| ------------------------| ------ | ----------- |
| email                   | string | NOT NULL    |
| password                | string | NOT NULL    |
| name                    | string | NOT NULL    |
| profile                 | text   | NOT NULL    |
| occupation              | text   | NOT NULL    |
| position                | text   | NOT NULL    |

## rooms テーブル

| Column      | Type       | Options     |
| ----------- | ------     | ----------- |
| title       | string     | NOT NULL    |
| catch_copy  | text       | NOT NULL    |
| concept     | text       | NOT NULL    |
| user        | references | NOT NULL    |

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | NOT NULL                       |
| user   |references  |                                |
| user   |references  |                                |

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |