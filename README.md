# README

# debate-app

開始日 12/26

-このアプリを作った理由

よく知らない人と気軽にディべートができ、自分が正しいなど、人は相手にマウントを取るのが大好きな生き物だと思います、このご時世ストレスも計り知れないと思います、ここで、誰かに喧嘩挑むもよし、間違ったことをいった人を正すのもよし
２ちゃんねるのひろゆきさんなどのディベートは好評なようなので、皆すきなんですよきっと、それを満たす場所を用意するサイトを作ってみようと思いました

---

-使い方

まずはログインしてその後
ルームを開くかまたは、ルームに入ります
そこにあるお題で、ディベートするというだけのアプリケーションです。

---

# テーブル

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

## rooms

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| explanation | string  |             |
| category    | integer |             |

## room_users

| Column  | Type      | Options                        |
| ------- | --------- | ------------------------------ |
| room_id | reference | null: false, foreign_key: true |
| user_id | reference | null: false, foreign_key: true |

## messages

| Column  | Type      | Options                        |
| ------- | --------- | ------------------------------ |
| content | string    | null: false                    |
| user_id | reference | null: false, foreign_key: true |
| room_id | reference | null: false, foreign_key: true |
