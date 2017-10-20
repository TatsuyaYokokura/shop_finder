# はじめに
* 地元の商店街にある店舗（飲食店・物販店・施設等）の情報と口コミを閲覧出来るサービス
* 掲載店舗に関しては予め登録している情報のみで、口コミに関してはログインしたユーザーのみ書き込むことが出来る


## サービス概要
* indexページに登録されている店舗の一覧が掲載されている
  * 店名／ジャンル／メイン画像／キャッチコピーが掲載
* 店舗名をクリックするとshowページに変移する
* showページにはその店舗情報が掲載されている
  * 店名／メイン画像／キャッチコピー／店舗詳細／写真※複数枚／写真に付随する説明文／口コミ／店舗情報
* 口コミはログインしないと書き込みが出来ない仕様にする
  * ログインしないと出来ない機能は口コミのみ
  * ログインボタン・口コミ投稿ボタンを押した時にログインページに変移出来るようにする


## 追加検討機能
* indexページに検索ボックスを設けて、店名、もしくはジャンルから情報を検索出来るようにする
  * indexページに検索結果を表示させる


## DB設計

**shops_table**
| Center align | Center align | Center align |
|:-------------|-------------:|:------------:|
| id           | integer      |              |
| shop_name    | string       | 店名          |
| genre        | string       | ジャンル      |
| sales_copy   | string       | キャッチコピー |
| text         | text         | 店舗詳細      |
| main_image   | text         | メイン画像    |
| sub_image    | text         | サブ画像      |
| adress       | string       | 住所         |
| tel          | string       | 電話番号      |
| opne_time    | string       | 営業時間      |
| link         | string       | HPリンク      |

***アソシエーション***
* has_many :reviews
* has_many :images


**reviews_table**
| Center align | Center align | Center align |
|:-------------|-------------:|:------------:|
| id           | integer      |              |
| shop_id      | integer      |              |
| user_id      | integer      |              |
| review       | text         | 口コミ        |

***アソシエーション***
* belongs_to :shop
* belongs_to :user


**images_table**
| Center align | Center align | Center align |
|:-------------|-------------:|:------------:|
| id           | integer      |              |
| shop_id      | integer      |              |
| image        | text         | 写真          |
| memo         | string       | 写真の説      |

***アソシエーション***
* belongs_to :shop


**users_table**
| Center align | Center align | Center align |
|:-------------|-------------:|:------------:|
| id           | integer      |              |
| email        | integer      | メール        |
| nickname     | text         | 名前          |

***アソシエーション***
* has_many :reviews

