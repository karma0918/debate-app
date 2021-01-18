# README

# debate-app

開始日 12/26

## github

https://github.com/karma0918/debate-app

### Email : komarukauk@gmail.com

### Password karma123

## 利用の方法

1. まずはログインしてもらいます。
2. そしたら上辺りにある部屋を作るを押してください
3. そしたら、カテゴリ、名前、説明、の情報を記載して、作成します
4. そしたら、自分が作成したものが、一番上にあると思うので、その部屋の中に入ります。
5. そこでメッセージを送信することができるので、そこで議論することができるのです

---

- 目指した課題の解決

よく知らない人と気軽にディべートができ、自分が正しいなど、人は相手にマウントを取るのが大好きな生き物だと思います、このご時世ストレスも計り知れないと思います、ここで、誰かに喧嘩挑むもよし、間違ったことをいった人を正すのもよし
２ちゃんねるのひろゆきさんなどのディベートは好評なようなので、皆すきなんですよきっと、それを満たす場所を用意するサイトを作ってみようと思いました

---

- 使い方

まずはログインしてその後
ルームを開くかまたは、ルームに入ります
そこにあるお題で、ディベートするというだけのアプリケーションです。

---

# 要件

| Feature                | Purpose                                      | Details                                                      | Story                                                        | Estimate |
| ---------------------- | -------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | -------- |
| message 機能           | メッセージを送ったり送られたり、できる       | 文字を打って、送信ボタンが押されたらそれを保存し、表示させる | 文字を打って、送信ボタンが押されたらそれを保存し、表示させる | 3 日     |
| 検索機能               | 部屋を検索して絞れる                         | カテゴリーまたは、room 名を押して検索ボタンを押して検索する  | 検索ボタンを押して、それに近いものを表示させる               | 2 日     |
| ユーザーのテストコード | ユーザー機能のコードがちゃんと動くかどうか？ | rspec を使い validates にあったもののパターンをチェックする  | ターミナル空起動させてチェックする                           | 1 日     |

|
|

- 実装予定の機能
  リアルタイムチャットアプリ
  activeadmin

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
