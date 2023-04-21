# README

## 環境構築
```
$ bundle install --without=production
$ bin/rails db:setup
$ yarn install
$ bin/webpack
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください
直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？

## 提案内容

ソーシャルメディアと連携させる。ソーシャルメディア（以下SNS）の認証ともくもく会の開催を作成したページ・及び参加を選んだページをシェアできるようにする。MOKUMOKUアプリの認知拡大を狙い、登録ユーザー数や関心をひくことから課題の解決を計る。気軽にアプリと連携でき扱えることで、ユーザーがアプリ内での活動を活発にすると思う。

またシェア機能によって、アプリ内やもくもく会以外でのユーザー交流が生まれることでMOKUMOKUアプリが現状つかんでいるニーズである「エンジニアのプログラミング仲間をつくりたい」ということに対して課題である仲間づくりの機会提供ができる。

## 実装方針

1. ‘gem amniauth’と ‘gem omuniauth-twitter’ をインストール。
2. デモ用のためTwitter認証のAPIキーとシークレットキーの環境変数の設定はしない
3. 認証用のルーティングを設定する
4. セッションコントローラにツイッターの認証アクションを追加
5. シェアしたいページにツイッターのシェアボタンを実装