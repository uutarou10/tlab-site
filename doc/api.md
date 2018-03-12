# ざっくりAPI設計
ステータスコード?

察してくれ。
## /users
### GET /users
ユーザーの一覧取得を行う。

Response

```json
[
    {
        "id": 1,
        "name": "Kentaro Tago",
        "email": "mail@example.com",
        "dispay_name": "kentaro"
    },
    {
        "id": 2,
        "name": "Kentaro Tago",
        "email": "mail2@example.com",
        "dispay_name": "kentaro2"
    }
]
```

### GET /users/:id
指定したユーザーを取得する

Response

```json
{
    "id": 1,
    "name": "Kentaro Tago",
    "email": "mail@example.com",
    "dispay_name": "kentaro"
}
```

### POST /users
ユーザーを作成する

Request body

```json
{
    "name": "Kentaro Tago",
    "email": "mail@example.com",
    "dispay_name": "kentaro",
    "password": "secret"
}
```

### DELETE /users/:id
指定したユーザーを削除する


## /projects (ユーザー情報の取得)
### GET /projects
プロジェクトの一覧取得を行う。

Response

```json
[
    {
        "id": 1,
        "title": "hoge",
        "description": "fugafuga",
        "feed_url": "https://example.com/feed",
        "url": "https://example.com/",
        "site_title": "ビジネスプロジェクトブログ",
        "abbreviation": "Biz"
    },
    {
        "id": 2,
        "title": "hoge",
        "description": "fugafuga",
        "feed_url": "https://example.com/feed",
        "url": "https://example.com/",
        "site_title": "ビジネスプロジェクトブログ",
        "abbreviation": "Biz"
    }
]
```

### GET /projects/:id
指定したプロジェクトを取得する

Response

```json
{
    "id": 1,
    "title": "hoge",
    "description": "fugafuga",
    "feed_url": "https://example.com/feed",
    "url": "https://example.com/",
    "site_title": "ビジネスプロジェクトブログ",
    "abbreviation": "Biz"
}
```

### POST /projects
プロジェクトを作成する

Request body

```json
{
    "title": "hoge",
    "description": "fugafuga",
    "feed_url": "https://example.com/feed",
    "url": "https://example.com/",
    "site_title": "ビジネスプロジェクトブログ",
    "abbreviation": "Biz"
}
```

### DELETE /projects/:id
指定したプロジェクトを削除する


## /articles
### GET /articles
記事の一覧取得を行う。

Response

```json
[
    {
        "id": 1,
        "title": "サイトリニューアルを行いました",
        "body": "**サイトリニューアルしました**",
        "user_id": 1,
        "published_at": "2018-02-02...(フォーマット忘れた)",
        "updated_at": "2018-02-02...(フォーマット忘れた)"
    },
    {
        "id": 2,
        "title": "サイトリニューアルを行いました",
        "body": "**サイトリニューアルしました**",
        "user_id": 1,
        "published_at": "2018-02-02...(フォーマット忘れた)",
        "updated_at": "2018-02-02...(フォーマット忘れた)"
    }
]
```

### GET /articles/:id
指定した記事を取得する

Response

```json
{
    "id": 1,
    "title": "サイトリニューアルを行いました",
    "body": "**サイトリニューアルしました**",
    "user_id": 1,
    "published_at": "2018-02-02...(フォーマット忘れた)",
    "updated_at": "2018-02-02...(フォーマット忘れた)"
}
```

### POST /articles
記事を作成する

Request body

```json
{
    "title": "サイトリニューアルを行いました",
    "body": "**サイトリニューアルしました**",
}
```

### PUT /articles/:id
記事を更新する

Request body

```json
{
    "title": "サイトリニューアルを行いました",
    "body": "**サイトリニューアルしました**",
}
```

### DELETE /articles/:id
指定した記事を削除する
