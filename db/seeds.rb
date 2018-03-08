# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
    email: 'mail@example.com',
    name: 'Kentaro Tago',
    display_name: 'kentaro',
    password: 'secret',
    password_digest: 'secret'
)

article_body = <<-'EOS'.strip_heredoc
# h1見出し
## h2見出し
**太字**

*イタリック*

~~取り消し~~

---
EOS

Article.create(
    title: 'テスト記事',
    body: article_body,
    user: user,
    published_at: Time.gm(2018,2,2)
)

project = Project.create(
    title: 'ビジネスプロジェクト',
    description: 'エンジニアを対象とした、ビジネススキル習得支援法を検討し、実際に育成プログラムを提供しています。',
    feed_url: 'https://example.com/feed',
    url: 'https://example.com/',
    site_title: 'ビジネスプロジェクトブログ',
    abbreviation: 'Biz'
)